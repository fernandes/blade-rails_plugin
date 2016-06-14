require "blade"
require "blade/rails_plugin/version"

module Blade::RailsPlugin
  extend self

  def initialize!
    require 'rails' unless defined?(Rails)
    load_rails_app if Rails.application.nil?
    return true if Rails.application.nil?
    Rails.application.initialize!
    rails_assets_paths = Rails.application.assets.paths
    Blade.config.load_paths.concat(rails_assets_paths)
  end

  def load_rails_app
    require 'rails'
    require File.join(Bundler::SharedHelpers.pwd, 'config', 'application.rb')
  end
end

Blade::RailsPlugin.initialize!
