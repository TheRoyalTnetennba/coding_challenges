$stack = []
$first = 0

def queue_of_stacks(op, el = nil)
  $stack << el if op == 1
  $first += 1 if op == 2
  puts $stack[$first] if op == 3
end

num_ops = gets.chomp.to_i
num_ops.times do
  op_num = gets.chomp.split(' ').map(&:to_i)
  queue_of_stacks(op_num[0], op_num.size > 1 ? op_num[1] : nil)
end