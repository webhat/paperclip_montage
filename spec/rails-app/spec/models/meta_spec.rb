require 'rails_helper'

RSpec.describe Meta do
	it 'attach' do
		meta = described_class.new montage: File.open('../fixtures/valid.jpg')
		expect(meta.montage).to_not be_nil
	end
	it 'attach' do
		meta = described_class.new
		meta.montage = File.open('../fixtures/valid.jpg')
		expect(meta.montage).to_not be_nil
	end
	it '#save' do
		meta = described_class.new montage: File.open('../fixtures/valid.jpg')
		expect(meta.montage).to_not be_nil
		meta.save
	end
	it '#after_update' do
		meta = described_class.new montage: File.open('../fixtures/valid.jpg')
		meta.save
		meta.montage = File.open('../fixtures/valid.jpg')
		expect(meta.montage).to_not be_nil
	end
	it '#reprocess_montage' do
		meta = described_class.new montage: File.open('../fixtures/valid.jpg')
		meta.reprocess_montage
		expect(meta.montage).to_not be_nil
	end
	it '#reprocess_montage' do
		meta = described_class.new montage: File.open('../fixtures/valid.jpg')
		medium = File.size(meta.montage.path(:medium))
		thumb = File.size(meta.montage.path(:thumb))
		original = File.size(meta.montage.path(:original))
		expect(medium).to be > original
		expect(medium).to be > thumb
		expect(thumb).to be < original
		expect(meta.montage).to_not be_nil
	end
end
