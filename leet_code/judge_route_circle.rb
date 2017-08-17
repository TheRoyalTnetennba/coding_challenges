def judge_circle(moves)
    counter = Hash.new(0)
    moves.chars.each { |move| counter[move] += 1 }
    return counter['D'] == counter['U'] && counter['L'] == counter['R']
end
