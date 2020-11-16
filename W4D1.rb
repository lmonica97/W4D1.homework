class GraphNode
    attr_accessor :value, :neightbors
    def initialize(value)
        self.value = value
        self.neighbors = []
    end
end

def bfs(starting_node, target_value)
    queue = [starting_node]

    visited = Set.new()

    until queue.empty?
    ele = queue.shift
    return ele if ele.value == target_value
    ele = queue.shift
    ele.neighbors.each do |neighbor|
        queue << neighbor unless visited.include?(ele)
    end
    nil
end


a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]