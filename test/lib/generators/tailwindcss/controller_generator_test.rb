require "./test/test_helper"
require "generators/tailwindcss/controller/controller_generator"

class Tailwindcss::Generators::ControllerGeneratorTest < Rails::Generators::TestCase
  GENERATION_PATH = File.expand_path("../tmp", File.dirname(__FILE__))

  tests Tailwindcss::Generators::ControllerGenerator
  destination GENERATION_PATH

  setup :prepare_destination

  arguments %w[Account foo bar]

  Minitest.after_run do
    FileUtils.rm_rf GENERATION_PATH
  end

  test "should invoke template engine" do
    run_generator
    assert_file "app/views/account/foo.html.erb"
    assert_file "app/views/account/bar.html.erb"
  end

  test "should revoke template engine" do
    run_generator
    run_generator ["account"], behavior: :revoke

    assert_no_file "app/views/account"
    assert_no_file "app/views/account/foo.html.erb"
    assert_no_file "app/views/account/bar.html.erb"
  end
end
