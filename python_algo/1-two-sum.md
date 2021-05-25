## 1. Two Sum

<div style="font-size:15px">
<span style="color:lightgreen">Easy</span>. 

https://leetcode.com/problems/two-sum/

Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

```
Example 1:

Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Output: Because nums[0] + nums[1] == 9, we return [0, 1].

Example 2:

Input: nums = [3,2,4], target = 6
Output: [1,2]

Example 3:

Input: nums = [3,3], target = 6
Output: [0,1]

```

%


Approach: One-pass Hash Table

O(n) Time O(n) Space

```python
def twoSum(self, nums: List[int], target: int) -> List[int]:
    
    if len(nums) < 2:
        return []
    
    complement_dict = dict()
    
    for i, val in enumerate(nums):
        compl = target - val
        if i != 0 and compl in complement_dict.keys():
            return [complement_dict[compl], i]
        
        complement_dict[val] = i

    return []
```
</div>