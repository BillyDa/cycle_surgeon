require_relative 'boot'
require 'google_maps_service'
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CycleSurgeon
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end

  # Setup global parameters
GoogleMapsService.configure do |config|
  config.key = ENV['GEO_KEY3']
  config.retry_timeout = 20
  config.queries_per_second = 10
end

# Initialize client using global parameters
# gmaps = GoogleMapsService::Client.new

end
