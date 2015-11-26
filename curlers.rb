
require_relative 'agency.rb'

class Curlers

  def initialize
    @male_player = []
    File.foreach('men_curlers.txt') do |x|
      subarray = x.split(" ")
      @male_player.push(Player.new(subarray[0], subarray[1], subarray[2]))
    end

    @female_array = []
    File.foreach('women_curlers.txt') do |x|
      subarray = x.split(" ")
      @female_array.push(Player.new(subarray[0], subarray[1], subarray[2]))
    end
  end
end