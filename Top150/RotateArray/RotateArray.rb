class RotateArray

  def self.perform(nums, steps)
    p1  = 0
    p2 = (nums.length) -1 
    steps.times do |step|
      puts remember = nums[p1]
      nums[p1] = nums[p2]
      nums[p2] = remember
      p1 +=1
      p2 -=1
      # TBC
    end
    nums.inspect
  end
  
  def self.rotate(nums, k)
    return if nums.empty? || k.zero?
  
    effective_k = k % nums.size
    return if effective_k.zero?
  
    nums.replace(nums[-effective_k..] + nums[0...nums.size - effective_k])
  end
end


nums = [1,2,3,4,5,6,7]
steps = 
puts RotateArray.perform(nums,steps)

