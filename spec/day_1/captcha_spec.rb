# frozen_string_literal: true

RSpec.describe(Day1::Captcha) do
  it "Pt 1 ==> should return correct values" do
    input1 = "1122"
    input2 = "1111"
    input3 = "1234"
    input4 = "912129"

    captcha1 = Day1::Captcha.new(input1, 1)
    captcha2 = Day1::Captcha.new(input2, 1)
    captcha3 = Day1::Captcha.new(input3, 1)
    captcha4 = Day1::Captcha.new(input4, 1)

    expect(captcha1.call).to be(3)
    expect(captcha2.call).to be(4)
    expect(captcha3.call).to be(0)
    expect(captcha4.call).to be(9)
  end

  it "Pt 2 ==> should return correct values" do
    input1 = "1212"
    input2 = "1221"
    input3 = "123425"
    input4 = "123123"
    input5 = "12131415"

    captcha1 = Day1::Captcha.new(input1, input1.size / 2)
    captcha2 = Day1::Captcha.new(input2, input2.size / 2)
    captcha3 = Day1::Captcha.new(input3, input3.size / 2)
    captcha4 = Day1::Captcha.new(input4, input4.size / 2)
    captcha5 = Day1::Captcha.new(input5, input5.size / 2)

    expect(captcha1.call).to be(6)
    expect(captcha2.call).to be(0)
    expect(captcha3.call).to be(4)
    expect(captcha4.call).to be(12)
    expect(captcha5.call).to be(4)
  end
end
