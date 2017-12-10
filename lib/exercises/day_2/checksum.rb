# frozen_string_literal: true

module Day2
  # Given the following spreadsheet:
  #
  # 5 1 9 5
  # 7 5 3
  # 2 4 6 8
  #
  # The first row's largest and smallest values are 9 and 1, difference is 8.
  # The second row's largest and smallest values are 7 and 3, difference is 4.
  # The third row's difference is 6.
  #
  # In this example, the spreadsheet's checksum would be 8 + 4 + 6 = 18.
  class Checksum
    attr_reader :input, :matrix, :part1

    def initialize(input, part1 = true)
      @input  = input
      @matrix = input.split("\n").map { |row| row.split("\t") }

      @part1 = part1
    end

    def call
      if part1
        call_part_1
      else
        call_part_2
      end
    end

    private

    def call_part_1
      matrix.map do |row|
        max = row.map(&:to_i).max
        min = row.map(&:to_i).min

        max - min
      end.sum
    end

    # For example, given the following spreadsheet:
    #
    # 5 9 2 8
    # 9 4 7 3
    # 3 8 6 5
    #
    # 1º row, the only two numbers that evenly divide are 8 && 2; division is 4
    # 2º row, the two numbers are 9 and 3; the result is 3.
    # 3º row, the result is 2.
    #
    # In this example, the sum of the results would be 4 + 3 + 2 = 9.
    def call_part_2
      matrix.sum do |row|
        row_of_integers = row.map(&:to_i)

        row_of_integers
          .each_with_index
          .sum do |i, index|
            row_of_integers[(index + 1)..-1].reduce(0) do |sum, j|
              sum + divide_if_possible(i, j)
            end
          end
      end
    end

    def divide_if_possible(val1, val2)
      max_value = [val1, val2].max
      min_value = [val1, val2].min

      if (max_value % min_value).zero?
        max_value / min_value
      else
        0
      end
    end
  end
end
