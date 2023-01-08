# Intuition

To find the product of all the elements of nums except nums[i] for each index i, we can use a two-pass approach. In the first pass, we can compute the prefix products of nums, which are the products of all the elements before the current element. In the second pass, we can compute the suffix products of nums, which are the products of all the elements after the current element. Then, for each index i, we can compute the product of all the elements except nums[i] by multiplying the prefix product of nums[i] with the suffix product of nums[i].

# Approach

1-Initialize a list prefix of length n with all elements set to 1, where n is the length of nums.
2-Initialize a list suffix of length n with all elements set to 1.
3-Initialize a list ans of length n with all elements set to 1.
4-Loop over the elements of nums from index 1 to n - 1.
5-For each index i, set prefix[i] to the product of prefix[i - 1] and nums[i - 1].
6-Loop over the elements of nums from index n - 2 to 0.
7-For each index i, set suffix[i] to the product of suffix[i + 1] and nums[i + 1].
8-Loop over the elements of nums from index 0 to n - 1.
9-For each index i, set ans[i] to the product of prefix[i] and suffix[i].
10-Return ans.

# Complexity

- Time complexity: $$O(n)$$

- Space complexity: $$O(n)$$

# Code

```
class Solution {
  List<int> productExceptSelf(List<int> nums) {
    final listLength = nums.length;
    final prefix = List.filled(listLength, 1);
    for (int i = 1; i < listLength; i++) {
        prefix[i] = prefix[i - 1] * nums[i - 1];
    }

    final suffix = List.filled(listLength, 1);
    for (int i = listLength - 2; i >= 0; i--) {
        suffix[i] = suffix[i + 1] * nums[i + 1];
    }

    final answer = List.filled(listLength, 1);
    for (int i = 0; i < listLength; i++) {
        answer[i] = prefix[i] * suffix[i];
    }

    return answer;
  }
}
```
