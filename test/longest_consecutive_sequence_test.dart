import 'package:blind75/array_and_hashing/longest_consecutive_sequence/longest_consecutive_sequence.dart';
import 'package:blind75/utils/run_timed_code.dart';
import 'package:test/test.dart';

void main() {
  group('Longest Consecutive Sequence Test', () {
    test('Case 1', () {
      // Arrange
      final nums = [100, 4, 200, 1, 3, 2];
      //Act
      final output = runTimedCode(() => longestConsecutive(nums));
      // Assert
      expect(output, 4);
    });

    test('Case 2', () {
      // Arrange
      final nums = [0, 3, 7, 2, 5, 8, 4, 6, 0, 1];
      //Act
      final output = runTimedCode(() => longestConsecutive(nums));
      // Assert
      expect(output, 9);
    });
  });
}
