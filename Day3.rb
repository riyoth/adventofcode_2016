class Day3

  def part1(input)
    solution = 0

    input.split("\n").each do |line|
      sides = line.split(' ').map(&:to_i)
      if sides[0] + sides[1] > sides[2] && sides[0] + sides[2] > sides[1] && sides[1] + sides[2] > sides[0]
        solution +=1
      end
    end

    return solution
  end

end
