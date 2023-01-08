import 'package:blind75/array_and_hashing/product_of_array_except_self/product_of_array_except_self.dart';
import 'package:blind75/utils/run_timed_code.dart';
import 'package:test/test.dart';

void main() {
  group('Product of Array Except Self Test', () {
    test('Case 1', () {
      // Arrange
      final nums = [1, 2, 3, 4];
      //Act
      final output = runTimedCode(() => productExceptSelf(nums));
      // Assert
      expect(output, [24, 12, 8, 6]);
    });

    test('Case 2', () {
      // Arrange
      final nums = [-1, 1, 0, -3, 3];
      //Act
      final output = runTimedCode(() => productExceptSelf(nums));
      // Assert
      expect(output, [0, 0, 9, 0, 0]);
    });
  });
}
