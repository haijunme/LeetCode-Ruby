require_relative '../Node'

# @param {Node} root
# @return {Node}
def inorder_successor(node)
  if node.right != nil
    node = node.right
    while node.left != nil
      node = node.left
    end
    return node
  end

  while node.parent != nil && node == node.parent.right
    node = node.parent
  end
  node.parent
end

node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)

node1.parent = node2
node2.left = node1
node3.parent = node2
node2.right = node3

result = inorder_successor(node1)
puts result != nil ? result.val : nil
result = inorder_successor(node2)
puts result != nil ? result.val : nil
result = inorder_successor(node3)
puts result != nil ? result.val : "NIL"
