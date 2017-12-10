# frozen_string_literal: true

require "pry"

require "exercises/version"
require "exercises/day_1/captcha"

# Main class, it launches all exercises
module Exercises
  module_function

  def run_1_part_1
    input = File.read("lib/exercises/day_1/input.txt")

    Day1::Captcha.new(input, 1).call
  end

  def run_1_part_2
    input = File.read("lib/exercises/day_1/input.txt")

    Day1::Captcha.new(input, input.size / 2).call
  end
