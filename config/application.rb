require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Catalog
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # — all .rb files in that directory are automatically loaded.
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
    config.i18n.default_locale=:en

    config.i18n.load_path += Dir[Rails.root.join('my', 'locales',
                                                 '*.{rb,yml}').to_s]
    config.i18n.fallbacks = true
    config.i18n.fallbacks = [:en]
    config.i18n.enforce_available_locales = true

  end
end