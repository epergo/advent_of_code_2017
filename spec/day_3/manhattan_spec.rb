# frozen_string_literal: true

RSpec.describe(Day3::Manhattan) do
  it "Pt 1 ==> should return correct values" do
    expect(Day3::Manhattan.new(1).call).to    be(0)
    expect(Day3::Manhattan.new(9).call).to    be(2)
    expect(Day3::Manhattan.new(12).call).to   be(3)
    expect(Day3::Manhattan.new(23).call).to   be(2)
    expect(Day3::Manhattan.new(25).call).to   be(4)
    expect(Day3::Manhattan.new(26).call).to   be(5)
    expect(Day3::Manhattan.new(49).call).to   be(6)
    expect(Day3::Manhattan.new(50).call).to   be(7)
    expect(Day3::Manhattan.new(1024).call).to be(31)
  end
end

