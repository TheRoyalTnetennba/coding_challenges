def next_multiple(grade)
    num = grade
    num += 1 until num % 5 == 0
    num
end

def solve(grades)
    grades.map do |i|
      if i < 38
        i
      elsif next_multiple(i) - i < 3
        next_multiple(i)
      else
        i
      end
    end
end

n = gets.strip.to_i
grades = Array.new(n)
for grades_i in (0..n-1)
    grades[grades_i] = gets.strip.to_i
end
result = solve(grades)
print result.join("\n")
