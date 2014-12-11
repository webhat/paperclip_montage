require 'spec_helper'

RSpec.describe Paperclip::Montage do
	before do
		@file = File.open 'spec/tmp/test.jpg'
	end
	it '#initialize' do
		expect(described_class.new @file).to_not be_nil
	end
	it '#initialize' do
		expect{
			described_class.new nil
		}.to raise_error
	end
	it '#make' do
		expect(described_class.new(@file).make).to be_kind_of(Tempfile)
	end
end
