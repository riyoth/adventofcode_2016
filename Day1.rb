class Day1
  DIRECTIONS = [[1,0],[0,1],[-1,0],[0,-1]]
  TURNS = { 'R' => 1, 'L' => -1}

  def part1(input)
    instructions = input.split(/\s*,\s*/)

    position = [0,0]
    direction = 0

    instructions.each do |instruction|
      direction += TURNS[instruction[0]]
      position[0] += DIRECTIONS[direction %4][0] * instruction[1..-1].to_i
      position[1] += DIRECTIONS[direction %4][1] * instruction[1..-1].to_i
    end
    return position[0].abs + position[1].abs
  end

  def part2(input)
    instructions = input.split(/\s*,\s*/)

    position = [0,0]
    direction = 0
    visited =[]

    instructions.each do |instruction|
      direction += TURNS[instruction[0]]
      (1..instruction[1..-1].to_i).each do
        position[0] += DIRECTIONS[direction %4][0]
        position[1] += DIRECTIONS[direction %4][1]

        if visited.include? position.join(",")
          return position[0].abs + position[1].abs
        end

        visited << position.join(",")
      end
    end
  end
end
