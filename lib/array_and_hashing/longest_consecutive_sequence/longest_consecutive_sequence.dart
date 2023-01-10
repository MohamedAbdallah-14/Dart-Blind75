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
