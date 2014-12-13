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
end
