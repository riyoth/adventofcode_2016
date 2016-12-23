class Day2
  MOVES = { 'U' => [-1,0], 'D' => [1,0], 'L' => [0,-1], 'R' => [0,1] }
  KEYPAD = [[1,2,3],[4,5,6],[7,8,9]]
  KEYPAD2 = [[-1,-1,1,-1,-1],[-1,2,3,4,-1],[5,6,7,8,9],[-1,'A','B','C',-1],[-1,-1,'D',-1,-1]]

  def initialize(current_position)
    @current_position = current_position
  end

  def part1(input)
    solution = ''
    input.split("\n").each do |line|
      line.split('').each do |c|
        move_part1(c)
      end
      solution += KEYPAD[@current_position[0]][@current_position[1]].to_s
    end
    return solution
  end

  def move_part1(direction)
    if (@current_position[0] + MOVES[direction][0] > 2 ||
       @current_position[0] + MOVES[direction][0] < 0 ||
       @current_position[1] + MOVES[direction][1] > 2 ||
       @current_position[1] + MOVES[direction][1] < 0)
      return
    end
    @current_position[0] += MOVES[direction][0]
    @current_position[1] += MOVES[direction][1]
  end

  def part2(input)
    solution = ''
    input.split("\n").each do |line|
      line.split('').each do |c|
        move_part2(c)
      end
      solution += KEYPAD2[@current_position[0]][@current_position[1]].to_s
    end
    return solution
  end

  def move_part2(direction)
    new_position = [@current_position[0] + MOVES[direction][0], @current_position[1] + MOVES[direction][1]]
    if ( new_position[0] > 4 || new_position[0] < 0 ||
      new_position[1] > 4 || new_position[1] < 0 )
      return
    end
    if (KEYPAD2[new_position[0]][new_position[1]] == -1)
      return
    end
    @current_position[0] += MOVES[direction][0]
    @current_position[1] += MOVES[direction][1]
  end
end
