#require "rails"
require "sprockets/railtie"
require "jquery-rails"

class Tester < Rails::Application
  config.root = File.dirname(__FILE__)

  config.session_store :cookie_store, :key => '_rails_session'
  config.secret_token = '095f674153982a9ce59914b561f4522a'
  config.eager_load = false
end

