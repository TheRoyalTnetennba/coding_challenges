#!/bin/ruby

def bubble_sort(a)
  $total_swaps += $swaps
  $swaps = 0
  (1...a.size).each do |i|
    if a[i - 1] > a[i]
      $swaps += 1
      temp = a[i - 1]
      a[i - 1] = a[i]
      a[i] = temp
    end
  end
  $swaps.zero? ? a : bubble_sort(a)
end

n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
$total_swaps = 0
$swaps = 0
arr = bubble_sort(a)
puts "Array is sorted in #{$total_swaps} swaps."
puts "First Element: #{arr.first}"
puts "Last Element: #{arr.last}"