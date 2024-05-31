# frozen_string_literal: true

require_relative "testingbun/version"
# Attempt to load a versioned extension based on the Ruby version.
# Fall back to loading the non-versioned extension if version-specific loading fails.
begin
  RUBY_VERSION =~ /(\d+\.\d+)/
  require "#{Regexp.last_match(1)}/testingbun/testingbun"
rescue LoadError
  require "testingbun/testingbun"
end

module Testingbun
  class Error < StandardError; end
  # Your code goes here...
end
