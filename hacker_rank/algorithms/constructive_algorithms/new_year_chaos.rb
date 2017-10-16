#!/bin/ruby

class ChaoticQueue
  attr_reader :is_chaotic, :bribes, :num_bribes
  def initialize(queue)
    @queue = queue
    @bribes = Hash.new(0)
    @is_chaotic = false
    @num_bribes = count_num_bribes
  end

  def count_num_bribes
    total_changes = 0
    changes = 1
    while changes > 0
      changes = 0
      (0...@queue.size - 1).each do |i|
        j = i + 1

        if @queue[i] > @queue[j]
          @bribes[@queue[i]] += 1
          @is_chaotic = true if @bribes[@queue[i]] > 2
          @queue[i], @queue[j] = @queue[j], @queue[i]
          changes += 1
        end

      end
      total_changes += changes
    end
    total_changes
  end

end

def minimumBribes(q)
  queue = ChaoticQueue.new(q)
  puts queue.is_chaotic ? 'Too chaotic' : queue.num_bribes
end

t = gets.strip.to_i
for a0 in (0..t-1)
  n = gets.strip.to_i
  q = gets.strip
  q = q.split(' ').map(&:to_i)
  minimumBribes(q)
end
