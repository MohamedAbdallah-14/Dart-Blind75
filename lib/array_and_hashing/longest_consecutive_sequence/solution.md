# Intuition

This problem requires finding the length of the longest consecutive elements sequence from an unsorted array, and the algorithm needs to run in O(n) time complexity. My initial thoughts for solving this problem were to use a hash set to store unique elements from the array, and then iterate through the set to check for the start of a sequence and finding its length.

# Approach

- Convert the input array to a set of unique elements
- Iterate through each element in the set
- For each element, check if it is the start of a sequence by checking if the element before it is not in the set using the hash set
- If it is the start of a sequence, use two pointers (one to the left and one to the right of the current element) to move through the sequence and find its length
- Update the length of the longest sequence found so far
- Return the length of the longest sequence

# Complexity

- Time complexity: $$O(n)$$
- Space complexity: $$O(n)$$

# Code

```
class Solution {
  int longestConsecutive(List<int> nums) {
    final numsSet = nums.toSet();
    int solution = 0;
    for (final number in numsSet) {
      int sequenceLength = 0;
      //check if the current number is the start of a squence
      if (!numsSet.contains(number - 1)) {
        while (numsSet.contains(number + ++sequenceLength)) {}
      }

      if (sequenceLength > solution) solution = sequenceLength;
    }

    return solution;
  }
}

```
