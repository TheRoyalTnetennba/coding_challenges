def coin_sums(target, coins, idx = nil)
  idx ||= coins.size - 1
  return 1 if idx.zero?
  return 0 if target < 0
  coin_sums(target - coins[idx], coins, idx) + coin_sums(target, coins, idx - 1)
end
