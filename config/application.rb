require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Timetracker
  class Application < Rails::Application
    config.autoload_paths += %W(#{config.root}/lib)
   config.active_record.raise_in_transactional_callbacks = true
   config.autoload_paths << Rails.root.join("lib")
  end
end
