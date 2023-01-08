# Intuition
To check if any value appears at least twice in the array, we can loop over the array and store the elements we have seen in a set. If we encounter an element that is already in the set, it means that the element has appeared at least twice in the array, and we can return true. If we reach the end of the loop and the set only contains unique elements, we can return false.

# Approach
1-Create an empty set set to store the elements we have seen.
2-Loop over the elements num in nums.
3-If set contains num, return true.
4-If set does not contain num, add num to the set.
5-Return false at the end of the loop, since all the elements in nums are distinct.

This approach uses a set to store the elements we have seen and checks if the current element is in the set. If the element is in the set, it means that the element has appeared at least twice in the array, and we can return true. If the element is not in the set, we add it to the set and continue the loop. If we reach the end of the loop and the set only contains unique elements, we can return false.


# Complexity
- Time complexity: $$O(n)$$
- Space complexity: $$O(n)$$

# Code
```
class Solution {
  bool containsDuplicate(List<int> nums) {
    Set<int> set = Set();
    for (int num in nums) {
      if (set.contains(num)) {
        return true;
      }
      set.add(num);
    }
    return false;
  }
}

```
