class Node
    attr_accessor :data, :next
  
    def initialize(data)
      @data = data
    end
end
  
def find_middle(head)
  slow = head
  fast = head
  
  while fast && fast.next
    slow = slow.next
    fast = fast.next.next
  end
  
  slow.data
end
  
  # リストを構築
head = Node.new(1)
head.next = Node.new(2)
head.next.next = Node.new(3)
head.next.next.next = Node.new(4)
head.next.next.next.next = Node.new(5)
  
# 中央の要素を出力
puts find_middle(head)  # => 3
  