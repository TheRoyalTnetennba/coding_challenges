require_relative 'p05_hash_map'

def can_string_be_palindrome?(string)
	letters = HashMap.new(26)
	string.each_char { |c| letters.set(c, letters.include?(c) ? letters.get(c) + 1 : 1) }
	odd_count = 0
	letters.each { |k, v| odd_count += 1 if v % 2 != 0 }
	return odd_count <= 1
  
end



# because lol
# def can_string_be_palindrome?(string)
#   perms = string.chars.permutation.to_a
#   perms.any? { |word| word == word.reverse }
# end
