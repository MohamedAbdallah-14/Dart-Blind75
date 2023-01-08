import 'package:blind75/array_and_hashing/contains_duplicate/contains_duplicate.dart';
import 'package:blind75/utils/run_timed_code.dart';
import 'package:test/test.dart';

void main() {
  group('Contains Duplicate Test', () {
    test('Case 1', () {
      // Arrange
      final nums = [1, 2, 3, 1];
      //Act
      final output = runTimedCode(() => containsDuplicate(nums));
      // Assert
      expect(output, true);
    });

    test('Case 2', () {
      // Arrange
      final nums = [1, 2, 3, 4];
      //Act
      final output = runTimedCode(() => containsDuplicate(nums));
      // Assert
      expect(output, false);
    });

    test('Case 3', () {
      // Arrange
      final nums = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2];
      //Act
      final output = runTimedCode(() => containsDuplicate(nums));
      // Assert
      expect(output, true);
    });
  });
}
