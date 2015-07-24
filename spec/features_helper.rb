# Require this file for feature tests
require_relative './spec_helper'

require 'capybara'
require 'capybara/dsl'
require 'minitest/reporters'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

Capybara.app = Lotus::Container.new

class MiniTest::Spec
  include Capybara::DSL
end
