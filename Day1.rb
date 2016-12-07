
class Day1
  DIRECTIONS = [[1,0],[0,1],[-1,0],[0,-1]]
  TURNS = { 'R' => 1, 'L' => -1}

  def part1(instructions_string)
    instructions = instructions_string.split(/\s*,\s*/)

    position = [0,0]
    direction = 0

    instructions.each do |i|
      direction += TURNS[i[0]]
      position[0] += DIRECTIONS[direction %4 ][0] * i[1..-1].to_i
      position[1] += DIRECTIONS[direction %4 ][1] * i[1..-1].to_i
    end
    return position[0].abs + position[1].abs
  end


end
