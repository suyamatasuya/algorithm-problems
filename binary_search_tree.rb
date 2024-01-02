class Node
    attr_accessor :data, :left, :right
  
    def initialize(data)
      @data = data
      @left = nil
      @right = nil
    end
  end
  
  class BinarySearchTree
    attr_accessor :root
  
    def initialize
      @root = nil
    end
  
    def insert(value)
      @root = insert_into_tree(@root, value)
    end
  
    def search(value)
      node = find(@root, value)
      node.nil? ? nil : node.data
    end
  
    private
  
    def insert_into_tree(node, value)
      return Node.new(value) if node.nil?
  
      if value < node.data
        node.left = insert_into_tree(node.left, value)
      elsif value > node.data
        node.right = insert_into_tree(node.right, value)
      end
  
      node
    end
  
    def find(node, value)
      return if node.nil?
      return node if node.data == value
  
      if value < node.data
        find(node.left, value)
      else
        find(node.right, value)
      end
    end
  end
  
  # 使用例
  tree = BinarySearchTree.new
  tree.insert(5)
  tree.insert(3)
  tree.insert(7)
  tree.insert(1)
  tree.insert(9)
  
  puts tree.search(7)  # => 7
  puts tree.search(4)  # => nil
  