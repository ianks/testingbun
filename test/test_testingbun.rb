# frozen_string_literal: true

require "test_helper"

class TestTestingbun < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Testingbun::VERSION
  end

  def test_hello_world
    assert_equal "Hello world, from Rust!", Testingbun.hello("world")
  end
end
