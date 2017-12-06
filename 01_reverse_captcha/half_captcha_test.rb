require 'minitest/autorun'

require_relative './half_captcha'
describe HalfCaptcha do
  it "finds matches in '1234' " do
    expected = []
    HalfCaptcha
      .new('1234')
      .matches.must_equal(expected)
  end

  it "finds matches in '1212' " do
    expected = %w(1 2 1 2)
    HalfCaptcha
      .new('1212')
      .matches.must_equal(expected)
  end

  it "finds matches in 1221" do
    expected = []
    HalfCaptcha
      .new('1221')
      .matches.must_equal(expected)
  end

  it "can sum 123425 to four" do
    HalfCaptcha.new('123425').sum.must_equal(4)
  end

  it "can sum 123123 to twelve" do
    HalfCaptcha.new('123123').sum.must_equal(12)
  end
  
  it "can sum 12131415 to four" do
    HalfCaptcha.new('12131415').sum.must_equal(4)
  end

end
