class Checksum
  def initialize(spreadsheet)
    @spreadsheet = spreadsheet
  end

  attr_reader :spreadsheet

  def self.checksum_row(row)
    row.split.map(&:to_i).max - row.split.map(&:to_i).min
  end
  
  def self.checksum(sheet)
    sheet.inject(0) {|acc,row| acc + self.checksum_row(row)}
  end
end
