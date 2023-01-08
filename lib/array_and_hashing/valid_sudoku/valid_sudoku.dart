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
