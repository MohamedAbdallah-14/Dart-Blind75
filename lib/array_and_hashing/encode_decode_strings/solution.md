# Intuition

This problem requires encoding a list of strings to a single string and then decoding the encoded string back to the original list of strings. My initial thoughts for solving this problem were to use a separator between each string in the encoded string and add the length of the string before it.

# Approach

- Encode: Iterate through the input list of strings and for each string, add its length followed by '#' and the string itself to the encoded string

- Decode: Iterate through the encoded string and for each character, check if it's a digit followed by '#', if true, extract the word by substring method and add to the decoded list

# Complexity

- Time complexity: $$O(n)$$
- Space complexity: $$O(n)$$

# Code

```
class Solution {
  String encode(List<String> list) {
    String encodedString = "";
    for (final string in list) {
      encodedString += '${string.length}#$string';
    }
    return encodedString;
  }

  List<String> decode(String encodedString) {
    final decodedList = <String>[];
    for (int i = 0; i < encodedString.length; i++) {
      final wordLength = int.tryParse(encodedString[i]);
      if (wordLength != null && encodedString[i + 1] == '#') {
        decodedList.add(encodedString.substring(i + 2, i + 2 + wordLength));
        i += wordLength;
      }
    }
    return decodedList;
  }
}

```
