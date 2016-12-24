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

  def part2(input)
    solution = 0
    triangles = []
    input.split("\n").each do |line|
      triangles << line.split(' ').map(&:to_i)
    end
    for i in 0..triangles.length-1
      if i%3 ==0
        for j in 0..2
          puts(triangles[i][j])
          if triangles[i][j] + triangles[i+1][j] > triangles[i+2][j] && triangles[i][j] + triangles[i+2][j] > triangles[i+1][j] && triangles[i+1][j] + triangles[i+2][j] > triangles[i][j]
            solution +=1
          end
        end
      end
    end
    return solution
  end
end
