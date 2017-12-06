require 'minitest/autorun'

require_relative './checksum'
describe Checksum do
  it "can checksum a row" do
    Checksum.checksum_row("6 1 2 3 4 5").must_equal(5)
  end

  it "can checksum a sheet" do
    starting_value = ["6 1 2 3 4 5", "6 1 2 3 4 5"]
    Checksum.checksum(starting_value).must_equal(10)
  end
end
