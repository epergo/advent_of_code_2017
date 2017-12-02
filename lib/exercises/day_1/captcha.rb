# frozen_string_literal: true

# It goes on to explain that you may only leave by solving a captcha to prove
# you're not a human. Apparently, you only get one millisecond to solve the
# captcha: too fast for a normal human, but it feels like hours to you.
#
# The captcha requires you to review a sequence of digits (your puzzle input)
# and find the sum of all digits that match the next digit in the list. The list
# is circular, so the digit after the last digit is the first digit in the list.
#
# For example:
#
#     1122 produces a sum of 3 (1 + 2) because the first digit (1) matches the
#     second digit and the third digit (2) matches the fourth digit.
#
#     1111 produces 4 because each digit (all 1) matches the next.
#
#     1234 produces 0 because no digit matches the next.
#
#     91212129 produces 9 because the only digit that matches the next one is
#     the last digit, 9.
module Day1
  # Resolve the captcha
  class Captcha
    attr_reader(:input)

    def initialize(input)
      @input = input
    end

    def call
      numbers = input.gsub(/\s+/, "")
                     .split("")
                     .map(&:to_i)

      numbers << numbers[0] # Add first number to the end

      prev = 0
      numbers.reduce(0) do |sum, n|
        (sum += n) if n == prev

        prev = n
        sum
      end
    end
  end
end
