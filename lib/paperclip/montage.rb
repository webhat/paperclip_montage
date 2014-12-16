# Using https://gist.github.com/laurynas/708077 as a guide
module Paperclip
	class Montage < Processor
		attr_accessor :whiny

		def initialize file, options = {}, attachment = nil
			super
			@file            =  file
			@format          =  options[:format]
			@source          =  options[:source]
			setup_montage_sources @source
			setup_geometry options[:geometry]
			@current_format  =  File.extname(@file.path)
			@basename        =  File.basename(@file.path,  @current_format)
			@whiny           =  options[:whiny].nil? ? true : options[:whiny]
			@attachment      =  attachment
		end

		def setup_geometry geometry
			@height, @width  =  '100', '100'
			@height, @width  =  geometry.split('x') unless geometry.nil?
		end

		def setup_montage_sources source
			source_instance_vars

			if source.is_a?(Symbol)
				return if @attachment.instance.nil?
				source = @attachment.instance.send(source).map { |f|
					if f.avatar.options[:storage] == :filesystem
						File.open(f.avatar.path( :original ))
					else
						file_name = "tmp/#{f.id}-montage.png" #Dir::Tmpname.create(['montage', '.png']) { }
						f.avatar.copy_to_local_file( :original, file_name )
					end
				}
			end

			return if source.nil? || source.empty?

			source_instance_vars source, source.length
		end

		def source_instance_vars files = nil, imgs = 4
			@files = files
			@num_of_imgs = imgs
		end

		def make
			command = 'montage'

			dst = Tempfile.new([@basename, @format].compact.join("."))
			dst.binmode

			# -title 'Certificate'
			args =  "-background '#ffffff' -geometry #{height}x#{width}+#{grid} #{input_files_text} #{output_file dst}"

			Paperclip.run(command, args)

			dst
		end

		def width
			@width.gsub(/[^0-9]/,'').to_i/side
		end

		def height
			@height.gsub(/[^0-9]/,'').to_i/side
		end

		def side
			input_files.length/2
		end

		def grid
			"#{side}+#{side}"
		end

		def input_files_text
			input_files.join(' ')
		end

		def input_files
			(0..@num_of_imgs-1).collect do |i|
				if @files.nil?
					absolute_file( @file )
				else
					absolute_file( @files[i] )
				end
			end
		end

		def output_file dst
			absolute_file dst
		end

		def absolute_file file
			"#{ File.expand_path(file.path) }"
		end
	end
end
