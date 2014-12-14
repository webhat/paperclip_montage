require 'spec_helper'

RSpec.describe Paperclip::Montage do
	before(:all) do
		@file = get_fixture(:jpg)
	end
	after(:all) do
		@file.close
	end
	it '#initialize' do
		expect(described_class.new @file).to_not be_nil
	end
	it '#initialize nil' do
		expect{
			described_class.new nil
		}.to raise_error
	end
	it '#make' do
		expect(described_class.new(@file).make).to be_kind_of(Tempfile)
	end
	it '.make' do
		expect(described_class.make(@file)).to be_kind_of(Tempfile)
	end
	context 'multiple files' do
		before do
			@file1 = get_fixture(:png, 'valid1')
			@file2 = get_fixture(:png, 'valid2')
			@file3 = get_fixture(:png, 'valid3')
			@file4 = get_fixture(:png, 'valid4')
		end

		it 'creates a montage' do
			options = {geometry: '200x200', source: [@file1, @file2, @file3, @file4]}
			montage = described_class.new @file, options
			tempfile = montage.make
			expect(tempfile).to be_kind_of(Tempfile)
			#ObjectSpace.undefine_finalizer(tempfile)
		end

		it 'creates a montage with source nil' do
			options = {geometry: '200x200', source: nil}
			montage = described_class.new @file, options
			tempfile = montage.make
			expect(tempfile).to be_kind_of(Tempfile)
			#ObjectSpace.undefine_finalizer(tempfile)
		end

		it 'creates a montage with source empty' do
			options = {geometry: '200x200', source: []}
			montage = described_class.new @file, options
			tempfile = montage.make
			expect(tempfile).to be_kind_of(Tempfile)
			#ObjectSpace.undefine_finalizer(tempfile)
		end
	end
end
