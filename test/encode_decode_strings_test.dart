import 'package:blind75/array_and_hashing/encode_decode_strings/encode_decode_strings.dart';
import 'package:blind75/utils/run_timed_code.dart';
import 'package:collection/collection.dart';
import 'package:test/test.dart';

void main() {
  group('Encode and Decode Strings Test', () {
    test('Case 1', () {
      // Arrange
      final input = ["lint", "code", "love", "you"];
      //Act
      final output = runTimedCode(() {
        final encodedString = encode(input);
        return decode(encodedString);
      });
      // Assert
      expect(ListEquality().equals(input, output), true);
    });
    test('Case 2', () {
      // Arrange
      final input = ["we", "say", ":", "yes"];
      //Act
      final output = runTimedCode(() {
        final encodedString = encode(input);

        return decode(encodedString);
      });
      // Assert
      expect(ListEquality().equals(input, output), true);
    });
  });
}
