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
