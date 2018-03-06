# @param {Integer} num_courses
# @param {Integer[][]} prerequisites
# @return {Boolean}
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

def topological_sort(vertices)
	sorted = []
	q = []
	
	vertices.each do |vertex|
		q.push(vertex) if vertex.in_edges.empty?
	end
	
	until q.empty?
		curr = q.shift
		sorted << curr
		edges = curr.out_edges.dup
		edges.each do |edge|
			if edge.to_vertex.in_edges.count <= 1
				q.push(edge.to_vertex)
			end
			edge.destroy!
		end
	end
	
	vertices.length == sorted.length ? sorted : []
end

def can_finish(num_courses, prerequisites)
	vertices = {}
	elements = {}
	prerequisites.each do |tuple|
		tuple.each { |el| elements[el] = true }
		vertices[tuple[0]] = Vertex.new(tuple[0]) unless vertices[tuple[0]]
		vertices[tuple[1]] = Vertex.new(tuple[1]) unless vertices[tuple[1]]
		Edge.new(vertices[tuple[1]], vertices[tuple[0]])
	end
	sorted = topological_sort(vertices.values).map { |v| v.value }
	sort_elements = {}
	sorted.each { |el| sort_elements[el] = true }
	p sorted
	sort_elements.keys.size == elements.keys.size
	
end