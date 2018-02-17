require 'byebug'

class PolyTreeNode

  attr_accessor :children, :value, :parent

  def initialize(value, children=[], parent=nil)

    @value = value
    @children = children
    @parent = parent
  end

  def parent
    @parent
  end

  def children
    @children
  end

  def value
    @value
  end

  def parent=(node)
    #1 : self.parent
    #3 : self
    #4 : node

    #remove 3 from 1's list of children
    @parent.children.delete(self) unless @parent == nil

    #replace self's parent with node
    @parent = node

    if @parent == nil
        # self.parent = nil #Infinitie loop
    else
      # @parent.children.length > 0
      @parent.children << self unless @parent.children.include?(self)
    end
  end

  def add_child(child_node)
    child_node.parent=(self)
  end

  def remove_child(child_node)
    if !(self.children.include?(child_node))
      raise "errrrror"
    else
      child_node.parent=(nil)
    end
  end

  def dfs(target_value)
    
  end


end
