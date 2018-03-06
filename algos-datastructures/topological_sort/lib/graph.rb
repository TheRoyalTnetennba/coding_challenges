# class Vertex
# 	attr_accessor :value, :in_edges, :out_edges
#   def initialize(value)
#   	@value = value
#   	@in_edges = []
#   	@out_edges = []
#   end
# end

# class Edge
# 	attr_accessor :cost, :from_vertex, :to_vertex
#   def initialize(from_vertex, to_vertex, cost = 1)
#   	@from_vertex = from_vertex
#   	@to_vertex = to_vertex
#   	@cost = cost
#   	@to_vertex.in_edges << self
#   	@from_vertex.out_edges << self
#   end

#   def destroy!
#   	@to_vertex.in_edges.reject! { |e| e == self }
#   	@from_vertex.out_edges.reject! { |e| e == self }
#   	@to_vertex = nil
#   	@from_vertex = nil

#   end
# end


class Vertex
  attr_reader :value, :in_edges, :out_edges

  def initialize(value)
    @value, @in_edges, @out_edges = value, [], []
  end
end

class Edge
  attr_reader :to_vertex, :from_vertex, :cost

  def initialize(from_vertex, to_vertex, cost = 1)
    self.from_vertex = from_vertex
    self.to_vertex = to_vertex
    self.cost = cost

    to_vertex.in_edges << self
    from_vertex.out_edges << self
  end

  def destroy!
    self.to_vertex.in_edges.delete(self)
    self.to_vertex = nil
    self.from_vertex.out_edges.delete(self)
    self.from_vertex = nil
  end

  protected
  attr_writer :from_vertex, :to_vertex, :cost
end