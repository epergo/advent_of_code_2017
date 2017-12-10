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
    attr_reader :input, :matrix, :part_1

    def initialize(input, part_1 = true)
      @input  = input
      @matrix = input.split("\n").map { |row| row.split("\t") }

      @part_1 = part_1
    end

    def call
      if part_1
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
      matrix.map do |row|
        row
          .map(&:to_i)
          .each_with_index
          .map do |i, index|
            row[(index + 1)..-1].map do |j|
              j = j.to_i
              sum = 0
              sum = if j > i && (j % i).zero?
                      j / i
                    elsif i > j && (i % j).zero?
                      i / j
                    end
              sum
            end
            .compact
            .sum
          end
          .sum
      end.sum
    end
  end
end
