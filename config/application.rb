require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Timetracker
  class Application < Rails::Application
    config.autoload_paths += %W(#{config.root}/lib)
    config.autoload_paths << Rails.root.join("lib")
  end
end
