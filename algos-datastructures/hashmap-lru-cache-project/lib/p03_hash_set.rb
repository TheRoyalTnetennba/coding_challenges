require_relative 'p02_hashing'

class HashSet
  attr_reader :count

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(key)
    @count += 1
    @store[key.hash % @store.size].push(key)
    resize! if @count > @store.size
  end

  def include?(key)
    @store[key.hash % @store.size].any? { |el| el == key }
  end

  def remove(key)
    @count -= 1
    @store[key.hash % @store.size].reject! { |el| el == key }
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
    @store.each { |bucket| bucket.each { |el| els.push(el) } }
    @count = 0
    @store = Array.new(@store.size * 2) { Array.new }
    els.each { |el| insert(el) }
  end
end
