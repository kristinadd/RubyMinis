def product_except_self(nums)
  n = nums.length
  # Initialize the result array with 1's.
  result = Array.new(n, 1)

  # First pass: calculate prefix products.
  prefix = 1
  (0...n).each do |i|
    result[i] = prefix
    prefix *= nums[i]
  end

  # Second pass: calculate suffix products and multiply.
  suffix = 1
  (n-1).downto(0) do |i|
    result[i] *= suffix
    suffix *= nums[i]
  end

  result
end

# Example usage:
nums = [1, 2, 3, 4]
puts "Input: #{nums}"
puts "Output: #{product_except_self(nums)}"
