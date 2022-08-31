Given an integer array nums and an integer k, return the number of pairs (i, j) where i < j such that nums[i] - nums[j] == k.


### Example 1:

**Input:** nums = [3, 4, -7, 3, 1, 3, 0, 1, -4, -2, -2], k = -4

**Output:** 3

**Explanation:** The pairs with an absolute difference of 1 are:
- [-7, 3]
- [3, 0, 1, -4, -2, -2]
- [-2, -2]

## The solution(in python):

    class Solution:
        def countKDifference(self, nums: List[int], k: int) -> int:
            pairs = []  # list of pairs
            for i in nums:  # loop for each elem
              for j in nums: # nested loop for check pairs
                difference = i - j
                if difference == k: # chek difference
                  pairs.append([i,j]) # add pair to pairs list
             return pairs.__len__() # return number of pairs
