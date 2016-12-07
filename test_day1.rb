require_relative "Day1"
require "test/unit"

class Testday1 < Test::Unit::TestCase
  def test_part1_ex1
    d = Day1.new
    expected = d.part1('R2, L3')
    assert_equal expected, 5
  end

  def test_part1_ex2
    d = Day1.new
    expected = d.part1('R2, R2, R2')
    assert_equal expected, 2
  end

  def test_part1_ex3
    d = Day1.new
    expected = d.part1('R5, L5, R5, R3')
    assert_equal expected, 12
  end

  def test_part2_ex1
    d = Day1.new
    expected = d.part2('R8, R4, R4, R8')
    assert_equal expected, 4
  end
end
