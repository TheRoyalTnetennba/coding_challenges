class Node
  attr_accessor :key, :val, :next, :prev

  def initialize(key = nil, val = nil)
    @key = key
    @val = val
    @next = nil
    @prev = nil
  end

  def to_s
    "#{@key}: #{@val}"
  end

  def remove
    if @next.nil?
      @prev.next = nil unless @prev.nil?
    elsif @prev.nil?
      @next.prev = nil
    else
      @next.prev = @prev
      @prev.next = @next
    end
  end
end

class LinkedList
  include Enumerable
  def initialize
    @head = nil
  end

  def [](i)
    each_with_index { |node, j| return node if i == j }
    nil
  end

  def first
    @head
  end

  def last
    each { |node| return node if node.next.nil? }
  end

  def empty?
    @head.nil?
  end

  def get(key)
    each { |node| return node.val if node.key == key }
  end

  def include?(key)
    !get(key).nil?
  end

  def append(key, val)
    if @head.nil?
      @head = Node.new(key, val)
      return @head
    else
      node = Node.new(key, val)
      node.prev = last
      last.next = node
      return node
    end
  end

  def update(key, val)
    each { |node| node.val = val if node.key == key }
  end

  def remove(key)
    current = @head
    if @head.key == key
      @head = @head.next
      current.remove
    end
    until current.nil? || current.key == key
      current = current.next
    end
    return if current.nil?
    current.remove
  end

  def each
    current = @head
    while current
      yield current
      current = current.next
    end
  end

  def count
    count = 0
    each { count += 1 }
    count
  end

  # uncomment when you have `each` working and `Enumerable` included
  def to_s
    inject([]) { |acc, node| acc << "[#{node.key}, #{node.val}]" }.join(", ")
  end
end
