# frozen_string_literal: true

RSpec.describe(Day1::Captcha) do
  it "should return correct values" do
    input1 = "1122"
    input2 = "1111"
    input3 = "1234"
    input4 = "912129"

    captcha1 = Day1::Captcha.new(input1)
    captcha2 = Day1::Captcha.new(input2)
    captcha3 = Day1::Captcha.new(input3)
    captcha4 = Day1::Captcha.new(input4)

    expect(captcha1.call).to be(3)
    expect(captcha2.call).to be(4)
    expect(captcha3.call).to be(0)
    expect(captcha4.call).to be(9)
  end
end
