# @param {String} word1
# @param {String} word2
# @return {Integer}
def min_distance(word1, word2, num_ops = 0, idx = 0)

  return num_ops if word1 == word2
  if word1[idx] != word2[idx]
    if idx < word1.size
      sliced = word1
      sliced.slice!(idx)
      route1 = min_distance(sliced, word2, num_ops + 1, idx)
    end
    if idx < word2.size && idx < word1.size
      replaced = word1
      replaced[idx] = word2[idx]
      route2 = min_distance(replaced, word2, num_ops + 1, idx + 1)
    end
    if idx < word2.size
      inserted = word1.insert(idx, word2[idx])
      route3 = min_distance(inserted, word2, num_ops + 1, idx + 1)
    end
    [route1, route2, route3].select { |i| i }.min

  else
    min_distance(word1, word2, num_ops, idx + 1) || 0
  end
end