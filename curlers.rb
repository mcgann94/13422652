
require_relative 'agency.rb'

class Curlers

  attr_reader :male_player, :female_array

  def initialize
    @male_array = []
    File.foreach('men_curlers.txt') do |x|
      subarray = x.split(" ")
      @male_array.push(Agency.new(subarray[0], subarray[1], subarray[2]))
    end

    @female_array = []
    File.foreach('women_curlers.txt') do |x|
      subarray = x.split(" ")
      @female_array.push(Agency.new(subarray[0], subarray[1], subarray[2]))
    end
  end


  def to_s_male
    i=0
    output = ''

    while i<@male_array.size do
      output.concat(@male_array[i].to_s)
      output.concat("\n")
      i+=1
    end
    output.chomp
  end

  def to_s_female
    i=0
    output = ''

    while i<@female_array.size do
      output.concat(@female_array[i].to_s)
      output.concat("\n")
      i+=1
    end
    output.chomp
  end
end