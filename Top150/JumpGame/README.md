You are given an integer array nums. You are initially positioned at the array's first index, and each element in the array represents your maximum jump length at that position.

Return true if you can reach the last index, or false otherwise.

Example 1:
Input: nums = [2,3,1,1,4]
Output: true
Explanation: Jump 1 step from index 0 to 1, then 3 steps to the last index

No Mistake in the Logic:
The problem asks if it's possible to reach the last index, not what the optimal or only sequence is.
The sequence [jump 1 step to index 1, then jump 3 steps to index 4] is one valid way to reach the end.
The fact that the first element is 2 doesn’t force you to use the full 2-step jump; you have the option to jump 1 step or 2 steps. Both are within the allowed range.

Example 2:
Input: nums = [3,2,1,0,4]
Output: false
Explanation: You will always arrive at index 3 no matter what. Its maximum jump length is 0, which makes it impossible to reach the last index.
 
