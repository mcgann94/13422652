
require_relative 'curlers.rb'

class Agency

  attr_reader :male_player, :female_array, :male_name, :female_name

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
    @male_name = []
    @male_array.each do |male|
        @male_name.push(male.name)
    end
    @male_name
  end

  def create_f_teams
    @female_name = []
    @female_array.each do |female|
      @female_name.push(female.name)
    end
    @female_name
  end

  def teams_to_s
    puts "#{@male_name}"
  end

  def each_curler
    proficiency = 0
     @male_array.each do |x|
       proficiency = proficiency + x.prof
     end
    proficiency
  end
end

