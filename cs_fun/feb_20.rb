# February 20, 2020 Linked Lists and Binary Trees

def intersection(list_a, list_b)
  intersection_list = nil

  current_a = list_a
  current_b = list_b

  until current_a.nil? || current_b.nil?
    if current_a.value == current_b.value
      intersection_list = Node.new(current_a.value, intersection_list)
      current_a = current_a.next
      current_b = current_b.next
    elsif current_a.value < current_b.value
      current_a = current_a.next
    else
      current_b = current_b.next
    end

    return intersection_list
end

def has_cycle
  fast = @head.next
  fast = fast.next if fast
  slow = @head

  until fast.nil?
    if fast == slow
      return true
    end

    fast = fast.next
    return true if fast == slow
    fast = fast.next unless fast.nil?
    slow = slow.next
  end

  return false
end

# preorder root-left-right 60, 41, 35, 47, 69, 66, 65, 67, 73, 72, 85
# inorder left-root-right 35, 41, 47, 60, 65, 66, 67, 69, 72, 73, 85 
# postorder left-right-root 35, 47, 41, 65, 67, 66, 72, 85, 73, 69, 60
