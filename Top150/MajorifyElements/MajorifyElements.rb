class MajorifyElements
  def self.run(nums)

    hash = Hash.new

    nums.each do |num|
      if hash.key?(num)
        hash[num] = hash[num] +1
      else
        hash[num] = 0
      end
    end
    puts hash
  end
end

nums = [2,2,1,1,1,2,2]
MajorifyElements.run(nums)
