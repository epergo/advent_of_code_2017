# frozen_string_literal: true

require "exercises/version"
require "exercises/day_1/captcha"

# Main class, it launches all exercises
module Exercises
  def self.run_1
    input = File.read("lib/exercises/day_1/input.txt")

    Day1::Captcha.new(input).call
  end
end

