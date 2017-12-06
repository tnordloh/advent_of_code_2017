require_relative "checksum"

puts Checksum.checksum(File.readlines('data.txt'))
