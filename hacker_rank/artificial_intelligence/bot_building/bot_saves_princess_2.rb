def nextMove(n,r,c,grid)
  bot = []
  princess = []
  matrix = grid
  matrix.map! { |line| line.split('') }
  matrix.each_index do |row|
    matrix[row].each_index do |col|
      bot = [row, col] if matrix[row][col] == 'm'
      princess = [row, col] if matrix[row][col] == 'p'
    end
  end
  if bot[0] > princess[0]
    bot[0] -= 1
    puts 'UP'
  elsif bot[0] < princess[0]
    bot[0] += 1
    puts 'DOWN'
  elsif bot[1] < princess[1]
    bot[1] += 1
    puts 'RIGHT'
  elsif bot[1] > princess[1]
    bot[1] -= 1
    puts 'LEFT'
  end
end
