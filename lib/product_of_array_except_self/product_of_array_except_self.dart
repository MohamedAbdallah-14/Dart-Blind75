List<int> productExceptSelf(List<int> nums) {
  final listLength = nums.length;
  final prefix = List.filled(listLength, 1);
  for (int i = 1; i < listLength; i++) {
    prefix[i] = prefix[i - 1] * nums[i - 1];
  }
  print(prefix);

  final suffix = List.filled(listLength, 1);
  for (int i = listLength - 2; i >= 0; i--) {
    suffix[i] = suffix[i + 1] * nums[i + 1];
  }
  print(suffix);

  final answer = List.filled(listLength, 1);
  for (int i = 0; i < listLength; i++) {
    answer[i] = prefix[i] * suffix[i];
  }
  return answer;
}
