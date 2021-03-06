# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require "rails"
require "rails/test_help"
require "byebug"
require_relative "../lib/tailwindcss-rails-webpacker"

require "rails/test_unit/reporter"
Rails::TestUnitReporter.executable = 'bin/test'
