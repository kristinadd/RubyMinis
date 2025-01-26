class MergeArray
# The arrays are already sorted in advance
# not so efficient for time and space complexity
# just copy elements from nums2 into the end of nums1
  def self.merge_sorted_arrays(nums1, m, nums2, n)
    n.times do |i| # .times always starts from 0
      nums1[m+i] = nums2[i]
    end
    puts nums1.sort.inspect
  end
#####################################################################
# 3 pointer approach
  def self.merge_sorted_arrays_efficiently(nums1, m, nums2, n)
    i = m-1 #nums1
    j = n-1 #nums2
    k = (m+n) -1 #sort

    # Merge nums1 and nums2 from the end
    while i >= 0 && j >= 0
      if nums1[i] > nums2[j]
        nums1[k] = nums1[i]
        i -= 1
      else
        nums1[k] = nums2[j]
        j -= 1
      end
      k -= 1
    end

    # If there are remaining elements in nums2, copy them
    while j >= 0
      nums1[k] = nums2[j]
      j -= 1
      k -= 1
    end

    puts nums1
  end
end

nums1 = [1,3,3,0,0,0]
m = 3
nums2 = [2,5,6,7,7,8,8]
n = 3

# MergeArray.merge_sorted_arrays(nums1, m, nums2, n)
MergeArray.merge_sorted_arrays_efficiently(nums1, m, nums2, n)


# Purpose of the Loop:
# The loop is designed to compare elements from nums1 and nums2 and place the larger one at the end of the merged array (nums1).
# The pointers i and j track the current positions in nums1 and nums2, respectively.
# Stopping Condition:
# The loop continues as long as both i and j are valid (i.e., i >= 0 and j >= 0).
# If either i or j becomes negative, it means we’ve exhausted all elements in one of the arrays, and we no longer need to compare elements.
# Why Both Arrays?:
# We need to compare elements from both arrays to determine which one is larger and should be placed in the merged array.
# If one array is exhausted (e.g., j < 0), we can simply copy the remaining elements from the other array without further comparisons.
# What Happens When One Array Is Exhausted?
# If nums1 Is Exhausted (i < 0):
# This means all elements from nums1 have been processed.
# We can simply copy the remaining elements from nums2 into nums1.
# If nums2 Is Exhausted (j < 0):
# This means all elements from nums2 have been processed.
# The remaining elements in nums1 are already in the correct position, so no further action is needed.

