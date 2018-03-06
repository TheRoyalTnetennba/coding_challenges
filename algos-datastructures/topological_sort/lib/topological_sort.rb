require_relative 'graph'

# Implementing topological sort using both Khan's and Tarian's algorithms


# Kahn's
# O(|V| + |E|).


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



# Tarjans

def topological_sort(vertices)
	order = []
	explored = Set.new
	temp = Set.new
	cycle = false

	vertices.each do |vertex|
		cycle = dfs!(vertex, explored, temp, order, cycle)  unless explored.include?(vertex)
		return [] if cycle
	end

	order
end


def dfs!(vertex, explored, temp, order, cycle)
	return true if temp.include?(vertex)
	temp.add(vertex)

	vertex.out_edges.each do |edge|
		next_vertex = edge.to_vertex
		cycle = dfs!(next_vertex, explored, temp, order, cycle) unless explored.include?(next_vertex)
		return true if cycle
	end

	explored.add(vertex)
	temp.delete(vertex)
	order.unshift(vertex)
	false
end