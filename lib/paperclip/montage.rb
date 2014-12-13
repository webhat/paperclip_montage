# Using https://gist.github.com/laurynas/708077 as a guide
module Paperclip
	class Montage < Processor
		attr_accessor :whiny

		def initialize file, options = {}, attachment = nil
			super
			@file            =  file
			@format          =  options[:format]
			@height, @width  =  '100', '100'
			@height, @width  =  options[:geometry].split('x') unless options[:geometry].nil?
			@current_format  =  File.extname(@file.path)
			@basename        =  File.basename(@file.path,  @current_format)
			@whiny           =  options[:whiny].nil? ? true : options[:whiny]
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
			[
				absolute_file( @file ),
				absolute_file( @file ),
				absolute_file( @file ),
				absolute_file( @file )
			]
		end

		def output_file dst
			absolute_file dst
		end

		def absolute_file file
			"#{ File.expand_path(file.path) }"
		end
	end
end
