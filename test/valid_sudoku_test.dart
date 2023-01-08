import 'package:blind75/array_and_hashing/valid_sudoku/valid_sudoku.dart';
import 'package:blind75/utils/run_timed_code.dart';
import 'package:test/test.dart';

void main() {
  group('Valid Sudoku Test', () {
    test('Case 1', () {
      // Arrange
      final board = [
        ["5", "3", ".", ".", "7", ".", ".", ".", "."],
        ["6", ".", ".", "1", "9", "5", ".", ".", "."],
        [".", "9", "8", ".", ".", ".", ".", "6", "."],
        ["8", ".", ".", ".", "6", ".", ".", ".", "3"],
        ["4", ".", ".", "8", ".", "3", ".", ".", "1"],
        ["7", ".", ".", ".", "2", ".", ".", ".", "6"],
        [".", "6", ".", ".", ".", ".", "2", "8", "."],
        [".", ".", ".", "4", "1", "9", ".", ".", "5"],
        [".", ".", ".", ".", "8", ".", ".", "7", "9"]
      ];
      //Act
      final output = runTimedCode(() => isValidSudoku(board));
      // Assert
      expect(output, true);
    });

    test('Case 2', () {
      // Arrange
      final board = [
        ["8", "3", ".", ".", "7", ".", ".", ".", "."],
        ["6", ".", ".", "1", "9", "5", ".", ".", "."],
        [".", "9", "8", ".", ".", ".", ".", "6", "."],
        ["8", ".", ".", ".", "6", ".", ".", ".", "3"],
        ["4", ".", ".", "8", ".", "3", ".", ".", "1"],
        ["7", ".", ".", ".", "2", ".", ".", ".", "6"],
        [".", "6", ".", ".", ".", ".", "2", "8", "."],
        [".", ".", ".", "4", "1", "9", ".", ".", "5"],
        [".", ".", ".", ".", "8", ".", ".", "7", "9"]
      ];
      //Act
      final output = runTimedCode(() => isValidSudoku(board));
      // Assert
      expect(output, false);
    });
  });
}
