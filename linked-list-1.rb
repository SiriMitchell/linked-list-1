class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node 
  end
end  # end of LinkedListNode

class Stack
  attr_reader :linked_list_node

  def initialize
    @linked_list_node = nil #linked_list_node is the stack
  end

  def push(value)
    @linked_list_node = LinkedListNode.new(value, @linked_list_node)
  end

end

# Algorithm:
#create a new stack
#add the nodes in order to the stack (push)
#pop the nodes off the stack...
#add node to reversed_list
#LinkedListNode.new(node.value, node.next_node)

def reverse_list(list)
  stack = Stack.new

  while list
    stack.push(list.value)
    list = list.next_node
  end

    stack.linked_list_node
end
  

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
  end
end

node = LinkedListNode.new(37)
node = LinkedListNode.new(99, node)
node = LinkedListNode.new(12, node)

 

 revlist = reverse_list(node)
 puts "printing the reversed list"
 print_values(revlist)
