class MaxIntSet
	def initialize(max)
		@max = max
		@store = Array.new(max) 
	end

	def insert(num)
		@store[num] = num if is_valid?(num)
	end

	def remove(num)
		@store[num] = nil
	end

	def include?(num)
		!!@store[num]
	end

	private

	def is_valid?(num)
		if num < 0 || num > @max
			raise("Out of bounds")
			return false
		end
		true
	end

	def validate!(num)
	end
end


class IntSet
	def initialize(num_buckets = 20)
		@store = Array.new(num_buckets) { Array.new }
		@num_buckets = num_buckets
	end

	def insert(num)
		@store[num % @num_buckets].push(num)
	end

	def remove(num)
		@store[num % @num_buckets].reject! { |el| el == num }
	end

	def include?(num)
		@store[num % @num_buckets].any? { |el| el == num }
	end

	private

	def [](num)
		# optional but useful; return the bucket corresponding to `num`
	end

	def num_bucketss
		@store.length
	end
end

class ResizingIntSet
	attr_reader :count

	def initialize(num_buckets = 20)
		@store = Array.new(num_buckets) { Array.new }
		@count = 0
	end

	def insert(num)
		@count += 1
		@store[num % num_buckets].push(num)
		resize! if @count > num_buckets
	end

	def remove(num)
		@store[num % num_buckets].reject!{ |el| el == num }
		@count -= 1
	end

	def include?(num)
		@store[num % num_buckets].any? { |el| el == num }
	end

	private

	def [](num)
		# optional but useful; return the bucket corresponding to `num`
	end

	def num_buckets
		@store.length
	end

	def resize!
		els = []
		@store.each { |bucket| bucket.each { |num| els << num } }
		@store = Array.new(num_buckets * 2) { Array.new }
		@count = 0
		els.each { |el| insert(el) }
	end
end
