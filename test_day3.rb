require_relative "Day3"
require "test/unit"

class Testday3 < Test::Unit::TestCase
  def test_part1_ex1
    d = Day3.new()
    expected = d.part1("5 10 25")
    assert_equal expected, 0
  end

  def test_part1_ex2
    d = Day3.new()
    expected = d.part1('3 4 5')
    assert_equal expected, 1
  end

  def test_part1_ex3
    d = Day3.new()
    expected = d.part1('5 10 25
3 4 5')
    assert_equal expected, 1
  end

  def test_part2_ex1
    d = Day3.new()
    expected = d.part2('101 301 501
102 302 502
103 303 503
201 401 601
202 402 602
203 403 603')
    assert_equal expected, 6
  end
end
