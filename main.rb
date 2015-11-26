
require_relative 'agency.rb'
#require_relative 'curlers.rb'

agency = Agency.new

puts "QUESTION 1\n"
puts "\nMALE CURLERS:\n#{agency.to_s_male}"
puts "\nFEMALE CURLERS:\n#{agency.to_s_female}"
puts "\nQuestion 2:\n"
agency.sort_male!
agency.sort_female!
#puts "#{agency.teams_to_s}"
puts "The partners of the men side are:\n#{agency.create_teams}\nand the females\n#{agency.create_f_teams}"
puts "They are matched respectively, ie Bob, Mary etc.."
puts "\nQuestion 3:\n"
puts "Total proficicency of all male players = #{agency.each_curler}"