require_relative "Day2"
require "test/unit"

class Testday2 < Test::Unit::TestCase
  def test_part1_ex1
    d = Day2.new([1,1])
    expected = d.part1('ULL')
    assert_equal expected, "1"
  end

  def test_part1_ex2
    d = Day2.new([0,0])
    expected = d.part1('RRDDD')
    assert_equal expected, "9"
  end

  def test_part1_ex3
    d = Day2.new([2,2])
    expected = d.part1('LURDL')
    assert_equal expected, "8"
  end

  def test_part1_ex4
    d = Day2.new([2,1])
    expected = d.part1('UUUUD')
    assert_equal expected, "5"
  end

  def test_part1_ex1
    d = Day2.new([1,1])
    expected = d.part1('ULL
RRDDD
LURDL
UUUUD')
    assert_equal expected, "1985"
  end

  def test_part2_ex1
    d = Day2.new([2,0])
    expected = d.part2('ULL')
    assert_equal expected, "5"
  end

  def test_part2_ex2
    d = Day2.new([3,0])
    expected = d.part2('RRDDD')
    assert_equal expected, "D"
  end

  def test_part2_ex3
    d = Day2.new([4,2])
    expected = d.part2('LURDL')
    assert_equal expected, "B"
  end

  def test_part2_ex4
    d = Day2.new([3,2])
    expected = d.part2('UUUUD')
    assert_equal expected, "3"
  end

  def test_part2_ex1
    d = Day2.new([3,0])
    expected = d.part2('ULL
RRDDD
LURDL
UUUUD')
    assert_equal expected, "5DB3"
  end

end
