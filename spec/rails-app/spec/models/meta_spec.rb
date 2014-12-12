require 'rails_helper'

RSpec.describe Meta do
	it 'attach' do
		meta = described_class.new
		meta.montage = File.open('../tmp/test.jpg')
		expect(meta.montage).to_not be_nil
	end
end
