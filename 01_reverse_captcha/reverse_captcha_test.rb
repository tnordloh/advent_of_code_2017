require 'minitest/autorun'

require_relative './reverse_captcha'
describe ReverseCaptcha do
  it "finds matches in '1234' " do
    expected = []
    ReverseCaptcha
      .new('1234')
      .matches.must_equal(expected)
  end
  it "finds matches in '1122' " do
    expected = ['1','2']
    ReverseCaptcha
      .new('1122')
      .matches.must_equal(expected)
  end

  it "finds matches in 1111" do
    expected = ['1','1','1','1']
    ReverseCaptcha
      .new('1111')
      .matches.must_equal(expected)
  end

  it "can sum 1234 to three" do
    ReverseCaptcha.new('1122').sum.must_equal(3)
  end

  it "can sum 1122 to three" do
    ReverseCaptcha.new('1122').sum.must_equal(3)
  end
  
  it "can sum 1111 to four" do
    ReverseCaptcha.new('1111').sum.must_equal(4)
  end

  it "can sum 91212129 to nine" do
    ReverseCaptcha.new('91212129').sum.must_equal(9)
  end

end
