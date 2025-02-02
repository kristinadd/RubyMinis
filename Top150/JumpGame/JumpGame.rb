class JumpGame
  def self.can_jump?(nums)
    # Initialize the maximum reachable index
    max_reachable = 0
    
    # Iterate over the array with each index and its jump length
    nums.each_with_index do |jump, i|
      # If the current index is greater than the max reachable, you can't get here!
      return false if i > max_reachable
      
      # Update the maximum reachable index from the current position
      max_reachable = [max_reachable, i + jump].max
      
      # Optional: Early exit if we can already reach the end.
      return true if max_reachable >= nums.size - 1
    end
    
    # If we finished the loop, then we are able to reach the end.
    true
  end
end

nums = [3,3,3,3,4]
nums2 = [3,2,1,0,4]
puts JumpGame.can_jump?(nums)
