class MajorifyElements
  # def self.run(nums)
  #   hash = Hash.new
  #   nums.each do |num|
  #     if hash.key?(num)
  #       hash[num] = hash[num] +1
  #     else
  #       hash[num] = 0
  #     end
  #   end
  #   puts hash
  # end

  def self.run_algo(nums)
    candidate = nil
    count = 0

    nums.each do |num|
      if count == 0
        candidate = num
        count = 1
      elsif num == candidate
        count += 1
      else 
        count -= 1
      end
    end
    candidate
  end
  
end

nums = [2,2,1,1,1,2,2]
result =  MajorifyElements.run_algo(nums)
puts result 

#  Boyer-Moore Majority Vote algorithm
#  
# This algorithm allows us to determine the majority element in linear 
# time and constant space, which meets the follow-up requirements of the problem.

#  The Boyer-Moore Majority Vote algorithm works by maintaining a candidate element 
#  and a count. We iterate through the array, adjusting the count based on whether 
#  the current element matches the candidate. If the count reaches zero, we update 
#  the candidate to the current element. Since the majority element appears more 
#  than half the time, it will eventually be the candidate when the iteration completes.
#  
#

