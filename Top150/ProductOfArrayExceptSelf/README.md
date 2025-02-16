Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

You must write an algorithm that runs in O(n) time and without using the division operation.

 

Example 1:

Input: nums = [1,2,3,4]
Output: [24,12,8,6]
Example 2:

Input: nums = [-1,1,0,-3,3]
Output: [0,0,9,0,0]
 

Constraints:

2 <= nums.length <= 105
-30 <= nums[i] <= 30
The input is generated such that answer[i] is 
guaranteed to fit in a 32-bit integer.
 

Follow up: Can you solve the problem in O(1) 
extra space complexity? (The output array 
does not count as extra space for space complexity analysis.)

=========================================================================
Clarification because the description sucks 

What the Task Is Asking
You are given an integer array nums, and you need to build 
a new array answer where each element answer[i] is the 
product of every number in nums except the one at index i.

For example, if nums = [1, 2, 3, 4]:

For index 0: The product should be 2 * 3 * 4 = 24.
For index 1: The product should be 1 * 3 * 4 = 12.
For index 2: The product should be 1 * 2 * 4 = 8.
For index 3: The product should be 1 * 2 * 3 = 6.
So the output should be [24, 12, 8, 6].

