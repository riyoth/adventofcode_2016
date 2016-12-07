
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

  def part2(instructions_string)
    instructions = instructions_string.split(/\s*,\s*/)

    position = [0,0]
    direction = 0
    visited =[]
    hq = []

    instructions.each do |i|
      direction += TURNS[i[0]]
      (1..i[1..-1].to_i).each do
        position[0] += DIRECTIONS[direction %4 ][0]
        position[1] += DIRECTIONS[direction %4 ][1]

        if visited.include? position.join(",") then
          return position[0].abs + position[1].abs
        end
        
        visited.push(position.join(","))
      end

    end

  end

  def move()

  end

end
