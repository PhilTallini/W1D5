require 'byebug'
class PolyTreeNode

     

 def initialize(value)
    @parent = nil
    @children = []
    @value = value
 end

 def parent=(new_parent)
    
    @parent.children.delete(self) unless parent == nil
    
    @parent = new_parent

    unless @parent == nil || @parent.children.include?(self) 
        @parent.children << self 
    end
end

    def add_child(child_node)
        child_node.parent = self
    end

    def remove_child(child_node)
         if children.include?(child_node)  
            child_node.parent=(nil)
         else
            raise "You f***** up" 
         end
    end




attr_reader :parent, :children, :value
attr_accessor :children
end