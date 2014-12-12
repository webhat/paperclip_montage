# Using https://gist.github.com/laurynas/708077 as a guide
module Paperclip
	class Montage < Processor
		def initialize file, options = {}, attachment = nil
			super
			@file = file

			@format           = options[:format]

			@current_format   = File.extname(@file.path)
			@basename         = File.basename(@file.path, @current_format)
		end

		def make
			command = 'montage'

			dst = Tempfile.new([@basename, @format].compact.join("."))
			dst.binmode

			args =  "-background '#ffffff' -geometry +#{grid} #{input_files} #{output_file dst}"

			Paperclip.run(command, args)

			dst
		end

		def grid
			side = input_files.length/2
			"#{side}+#{side}"
		end

		def input_files
			[
				absolute_file( @file ),
				absolute_file( @file ),
				absolute_file( @file ),
				absolute_file( @file )
			].join(' ')
		end

		def output_file dst
			p dst
			absolute_file dst
		end

		def absolute_file file
			"#{ File.expand_path(file.path) }"
		end
	end
end
