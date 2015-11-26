
require_relative 'agency.rb'
require_relative 'curlers.rb'

curler = Curlers.new

puts "QUESTION 1\n"
puts "\nMALE CURLERS:\n#{curler.to_s_male}"
puts "\nFEMALE CURLERS:\n#{curler.to_s_female}"