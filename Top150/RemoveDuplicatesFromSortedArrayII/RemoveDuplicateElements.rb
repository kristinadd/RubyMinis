class RemoveDuplicateElements
  def self.remove(nums)
    if (nums.size <= 2)
      return nums
    end
    k = 2
    # (2...nums.size) 3 dotts for an exclusive range so that i don't have to do -1
    (2..nums.size-1).each do |i|
      if (nums[i] != nums[k - 2])
        nums[k] = nums[i]
        k += 1
      end
    end
    puts nums.inspect
    k
  end


  def self.remove_pro(nums)
    return 0 if nums.empty?
    # Handle arrays smaller than 2 elements
    k = [nums.size, 2].min
    (2...nums.size).each do |i|
        if nums[i] != nums[k - 2]
            nums[k] = nums[i]
            k += 1
        end
    end
    k
  end
end

nums = [1,1,1]
puts RemoveDuplicateElements.remove(nums)
