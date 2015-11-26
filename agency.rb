class Agency

  attr_reader :name, :prof, :exp_prof

  def initialize name, prof, exp_prof
    @name = name
    @prof = prof.to_i
    @exp_prof = exp_prof.to_i
  end

  def to_s
    "#{@name}'s proficiency is: #{@prof}. Seeks partner with proficiency >= #{@exp_prof}"
  end
end