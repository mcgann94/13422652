
require_relative 'agency.rb'
#require_relative 'curlers.rb'

agency = Agency.new

puts "QUESTION 1\n"
puts "\nMALE CURLERS:\n#{agency.to_s_male}"
puts "\nFEMALE CURLERS:\n#{agency.to_s_female}"
agency.sort_male!
agency.sort_female!
puts "Total proficicency of all male players = #{agency.each_curler}"
puts "#{agency.team_to_s(5)}"