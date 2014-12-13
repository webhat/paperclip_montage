require 'rails_helper'

RSpec.describe Avatar, :type => :model do
	it 'attach' do
		avatar = described_class.new
		avatar.avatar = File.open('../fixtures/valid.jpg')
		expect(avatar.avatar).to_not be_nil
	end
end
