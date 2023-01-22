# frozen_string_literal: true

require_relative "file/version"

module Xls
  module File
    def self.call(name)
      puts "Hello, #{name}! I'm Ruby!"
    end
    class Error < StandardError; end
    # Your code goes here...
  end
end
