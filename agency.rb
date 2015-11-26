
require_relative 'curlers.rb'

class Agency

  attr_reader :male_player, :female_array

  def initialize
    @male_array = []
    File.foreach('men_curlers.txt') do |x|
      subarray = x.split(" ")
      @male_array.push(Curlers.new(subarray[0], subarray[1], subarray[2]))
    end

    @female_array = []
    File.foreach('women_curlers.txt') do |x|
      subarray = x.split(" ")
      @female_array.push(Curlers.new(subarray[0], subarray[1], subarray[2]))
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

  def sort_male!
    @male_array.sort! {|a,b| a.prof <=> b.prof}
  end

  def sort_female!
    @female_array.sort! {|x,y| x.prof <=>y.prof}
  end

  def create_teams
    team_array = []
    i=0
    while i<@male_array.size
      team_array.push(@male_array[0])
      i+=1
    end
    team_array
  end

  def team_to_s
    
  end
end

