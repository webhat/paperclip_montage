require 'bundler/setup'
Bundler.setup

require 'paperclip_montage' # and any other gems you need
#require 'paperclip-app/config/environment'
require 'rails/all'
require 'rspec/rails'
require "paperclip/matchers"

RSpec.configure do |config|
	config.include Paperclip::Shoulda::Matchers
end
