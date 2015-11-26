
require 'test/unit'
require_relative 'curlers.rb'
require_relative 'agency.rb'

class Tester < Test::Unit::TestCase

  def setup
    @curler_att = Agency.new
    @curlers = Curlers.new("Niall", 10, 10)
  end

  def test_initialize
    assert_equal("Niall", @curlers.name)
    assert_equal(10, @curlers.prof)
    assert_equal(10, @curlers.exp_prof)
  end

  def test_to_s
    assert_equal("Niall's proficiency is: 10. Seeks partner with proficiency >= 10", @curlers.to_s)
  end

  def test_agency_to_s_male
    assert_equal("Luke's proficiency is: 6. Seeks partner with proficiency >= 5\nMike's proficiency is: 5. Seeks partner with proficiency >= 7\nBob's proficiency is: 2. Seeks partner with proficiency >= 1\nJohn's proficiency is: 10. Seeks partner with proficiency >= 5\nSean's proficiency is: 4. Seeks partner with proficiency >= 4", @curler_att.to_s_male)
  end

  def test_agency_to_s_female
    assert_equal("Michelle's proficiency is: 8. Seeks partner with proficiency >= 8\nLucy's proficiency is: 7. Seeks partner with proficiency >= 9\nPatricia's proficiency is: 10. Seeks partner with proficiency >= 4\nAlice's proficiency is: 6. Seeks partner with proficiency >= 3\nMary's proficiency is: 5. Seeks partner with proficiency >= 5", @curler_att.to_s_female)
  end

  def test_each_curler
    assert_equal(["John", "Patricia"], @curler_att.each_curler(10))
  end
end