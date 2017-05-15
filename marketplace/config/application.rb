require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Marketplace
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  
#we are telling the paper clip below as where to store the images for item

config.paperclip_defaults = {
	storage: :s3,
	s3_credentials: {
		bucket: ENV['AWS_BUCKET'],
		access_key_id: ENV['AWS_ACCESS_KEY_ID'],
		secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
		s3_region: ENV['AWS_REGION']
	}
}


  end
end