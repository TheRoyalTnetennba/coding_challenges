def displayPathtoPrincess(n,grid)
  bot = []
  princess = []
  moves = []
  matrix = grid
  matrix.map! { |line| line.split('') }
  matrix.each_index do |row|
    matrix[row].each_index do |col|
      bot = [row, col] if matrix[row][col] == 'm'
      princess = [row, col] if matrix[row][col] == 'p'
    end
  end
  until bot[0] <= princess[0]
    bot[0] -= 1
    moves << 'UP'
  end
  until bot[0] >= princess[0]
    bot[0] += 1
    moves << 'DOWN'
  end
  until bot[1] >= princess[1]
    bot[1] += 1
    moves << 'RIGHT'
  end
  until bot[1] <= princess[1]
    bot[1] -= 1
    moves << 'LEFT'
  end
  moves.each { |line| puts line }
end
