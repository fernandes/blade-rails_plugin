require 'test_helper'

class Blade::RailsPluginTest < Minitest::Test
  def setup
    Blade.initialize!(interface: 'ci', plugins: { rails: {} }, load_paths: "test/javascripts/src")
    @load_paths = Blade.config.load_paths
  end

  def test_that_it_has_a_version_number
    refute_nil ::Blade::RailsPlugin::VERSION
  end

  def test_total_load_paths
    assert 3, @load_paths.size
  end

  def test_concat_rails_assets
    assert @load_paths.include?(Rails.application.assets.paths[0])
    assert @load_paths.include?(Rails.application.assets.paths[1])
  end

  def test_keep_blade_config_file_paths
    assert @load_paths.include?("test/javascripts/src")
  end
end
