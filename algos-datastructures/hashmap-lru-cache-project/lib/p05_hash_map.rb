require_relative 'p02_hashing'
require_relative 'p04_linked_list'

class HashMap
  include Enumerable
  attr_reader :count

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { LinkedList.new }
    @count = 0
  end

  def include?(key)
    @store[key.hash % @store.size].include?(key)
  end

  def set(key, val)
    bucket = @store[key.hash % @store.size]
    if bucket.include?(key)
      bucket.update(key, val)
    else
      @count += 1
      bucket.append(key, val)
      resize! if @count > @store.size
    end
  end

  def get(key)
    @store[key.hash % @store.size].get(key)
  end

  def delete(key)
    @count -= 1
    @store[key.hash % @store.size].remove(key)
  end

  def each
    @store.each do |bucket|
      bucket.each { |node| yield node.key, node.val }
    end
  end

  # uncomment when you have Enumerable included
  def to_s
    pairs = inject([]) do |strs, (k, v)|
      strs << "#{k.to_s} => #{v.to_s}"
    end
    "{\n" + pairs.join(",\n") + "\n}"
  end

  alias_method :[], :get
  alias_method :[]=, :set

  private

  def num_buckets
    @store.length
  end

  def resize!
    nodes = []
    each { |k, v| nodes.push([k, v]) }
    @store = Array.new(@store.size * 2) { LinkedList.new }
    @count = 0
    nodes.each { |k, v| set(k, v) }
  end

  def bucket(key)
    # optional but useful; return the bucket corresponding to `key`
  end
end
