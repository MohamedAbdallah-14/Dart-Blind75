# Intuition
To solve this problem, we need to check if the rows, columns, and 3x3 sub-boxes of the Sudoku board have any repeating digits.

# Approach
- Initialize 3 dictionaries to store the digits in each row, column, and 3x3 sub-box.
- Iterate over each cell in the board.
- For each cell, check if the digit has already been seen in the corresponding row, column, and 3x3 sub-box. If it has, return false. If it has not, add it to the corresponding row, column, and 3x3 sub-box.
- Return true after all cells have been processed.


# Complexity
- Time complexity: $$O(n^2)$$ where n is the size of the input (a 9x9 board has a size of 81). This is because the first for loop iterates over all the cells in the board and the second for loop iterates over the rows, columns, and boxes.
- Space complexity: $$O(n)$$ where n is the size of the input. This is because the lists used to store the digits in each row, column, and 3x3 sub-box have a size of n.

# Code
```
class Solution {
  bool isValidSudoku(List<List<String>> board) {
    final List<List<int>> rows = List.generate(9, (_) => []);
    final List<List<int>> columns = List.generate(9, (_) => []);
    final List<List<int>> boxes = List.generate(9, (_) => []);

    for (int i = 0; i < 9; i++) {
      for (int j = 0; j < 9; j++) {
        final element = int.tryParse(board[i][j]);
        if (element == null) {
          continue;
        }

        final row = rows[i];
        if (row.contains(element)) return false;
        row.add(element);

        final column = columns[j];
        if (column.contains(element)) return false;
        column.add(element);

        final box = boxes[((i ~/ 3) * 3) + (j ~/ 3)];
        if (box.contains(element)) return false;
        box.add(element);
      }
    }

    return true;
  }
}


```
