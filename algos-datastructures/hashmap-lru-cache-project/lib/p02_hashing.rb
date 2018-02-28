class Fixnum
  # Fixnum#hash already implemented for you
end

class Array
  def hash
    str = ''
    self.each { |el| str << "#{el}#{el.class}"}
    str.hash
  end
end

class String
  def hash
    arr = self.split('')
    num = arr.length
    arr.each_with_index { |n, i| num += n.ord * i }
    num.hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    self.sort_by { |k, v| v }.hash
  end
end
