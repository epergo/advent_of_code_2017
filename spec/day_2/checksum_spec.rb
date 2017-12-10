# frozen_string_literal: true

RSpec.describe(Day2::Checksum) do
  let(:input)   { "5\t1\t9\t5\n7\t5\t3\n2\t4\t6\t8\n\n" }
  let(:input_2) { "5\t9\t2\t8\n9\t4\t7\t3\n3\t8\t6\t5\n\n" }

  it "Pt 1 ==> should return correct values" do
    checksum = Day2::Checksum.new(input)

    expect(checksum.call).to be(18)
  end

  it "Pt 2 ==> should return correct values" do
    checksum = Day2::Checksum.new(input_2, false)

    expect(checksum.call).to be(9)
  end
end
