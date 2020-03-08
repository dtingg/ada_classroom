# February 27, 2020 Stacks and Queues
# Step 1: Write down 3 - 4 clarifying questions you would ask an interviewer.
# Step 2: Write down assumptions for each of those questions.
# Step 3: Generate 2+ sample input & output combinations to the methods described. Look for edge-cases
# Step 4: Write a proposed solution.
# Step 5: Test your solution with your sample input.
# Step 6: Evaluate your solution in terms of space & time complexity.

class Student
  attr_reader :id, :name

  def initialize(id, name)
    @id = id
    @name = name
  end
end

class TreeNode
  attr_reader :key, :value
  attr_accessor :left, :right

  def initialize(key, value, left = nil, right = nil)
    @key = key
    @value = value
    @left = left
    @right = right
  end
end

# 1. Create a method which takes in an array of sorted students and generates a balanced Binary Search Tree.
# - What do you do with duplicates?
# - Can the array be empty? (yes)
# - What do I do if there is only one student? (return root)
# - How is it sorted? (ascending by id)
# - What do you want the method to return?
# - Do I already have a tree class?

# 2. yes
#   return root
#   ascending by id

# 3. [1: "Apple", 2: "Banana", 3: "Chocolate", 4: "Fig", 5: "Grape", 6: "Ice Cream", 7: "Jello"]
# []

# 4. Find middle student (length / 2)
# Find middle student of left, find middle student of right, continue until all students added

# Time complexity: O(n)
# Space complexity: O(n)
def create_tree_helper(tree, list, first = 0, last = list.length - 1)
  if first == last
    tree.add(first)
    return

  elsif first > last
    return
  end

  # find middle node
  middle_node = (last + first) / 2

  # Make that a new node (add it)
  tree.add(list[middle])

  # Make the left subtree of that new node with the left half of the array
  create_tree_helper(tree, list, first, middle - 1)

  # Make the right subtree of that new node with the right half of the array
  create_tree_helper(tree, list, middle + 1, last)
end

def create_tree(list)
  tree = Tree.new

  create_tree_helper(tree, list)
  return tree
end

# 2. Write a method which takes a TreeNode, called current_node as an argument and returns true if the tree with it's root at current_node is the root of a valid binary search tree and false if it is not.

# Time: O(n)
# Space: O(log n) if balanced
def valid_tree(current_node)
  return true if current_node is nil

  return false if current_node.left is !nil && current_node.left.key > current_node.key

  return false if current_node.right is !nil && current_node.right.key < current_node.key

  return valid_tree(current_node.left) && valid_tree(current_node.right)
end
