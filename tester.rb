
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
end