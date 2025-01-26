class RemoveElement
  # not the solution 
  def self.remove_element(nums, val)
    k = 0

    nums.each_with_index do |num, index| 
      if num == val
        nums.delete_at(index)
        k += 1
      end
    end
    puts nums.sort.inspect
    return k
  end
# after deleting elements, the array's length changes. So if you delete at index 3, 
# the next element is now at index 3, but the loop moves to index 4, skipping the 
# shifted element. This leads to some 2s not being checked.


  # not the solution 
  def self.remove_element_backwards(nums, val)
    k = 0

    (nums.size - 1).downto(0) do |index|
      if nums[index] == val
        nums.delete_at(index)
        k += 1
      end
    end
    puts nums.inspect
    return k
  end

  def self.remove_element_and_replace(nums, val)
    k = 0
    # In Ruby, the each method iterates over the array as it exists during the loop, not the original state. 
    # If you modify the array (e.g., delete elements) while iterating, the changes directly affect subsequent 
    # iterations. This can lead to skipped elements or unexpected behavior.
    nums.each_with_index do |num, index| 
      if num != val
        nums[k] = nums[index]
        k += 1
      end
    end
    puts nums.inspect
    return k
  end

  def self.remove_element_and_replace_fixed(nums, val)
    k = 0
    nums.each_with_index do |_, index|
      if nums[index] != val
        nums[k] = nums[index]
        k += 1
      end
    end
    k
  end
  

  # solution
  def self.remove_element_final(nums, val)
    k = 0
    nums.each do |num|
        unless num == val
            nums[k] = num
            k += 1
        end
    end
    puts nums.inspect
    k
  end

end


nums = [0,1,2,2,3,0,4,2]
val = 2
puts RemoveElement.remove_element_final(nums, val)
puts RemoveElement.remove_element_and_replace(nums, val)
puts RemoveElement.remove_element_and_replace_fixed(nums, val) # not fixed