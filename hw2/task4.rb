class Tree
  attr_accessor :children, :node_name
  def initialize(hash)
      @node_name = hash.first[0]
      @children = hash.first[1].map { |k, v| Tree.new({k => v}) }
  end

  #traverse through each node in the tree
  def traverse(n)
    n.children.flat_map do |c|
      [c.node_name] + traverse(c)
    end
  end
end

tree=   Tree.new ( {'ggrandparent'   =>   {'grandparent1'   =>
    { 'parent1'   =>
          { 'child1'   =>   { } } ,'parent2'   =>   { 'child2'   =>   { } ,'child3'   =>
        { } }} ,'grandparent2'   =>{ 'parent3'   =>   { 'child4'   =>   { } } ,'parent4'   =>   { 'child5'   =>   { } ,'child6'   =>   {} }}}})
p "function 4"
z=tree.traverse(tree)
p z
