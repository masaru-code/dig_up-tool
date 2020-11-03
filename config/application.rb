require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DigUp
  class Application < Rails::Application
    config.load_defaults 5.2
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

   config.to_prepare do
     Devise::SessionsController.layout "devise"
     Devise::RegistrationsController.layout "devise"
     Devise::ConfirmationsController.layout "devise"
     Devise::UnlocksController.layout "devise"
     Devise::PasswordsController.layout "devise"
     HomeController.layout "home"
   end
  end
end
