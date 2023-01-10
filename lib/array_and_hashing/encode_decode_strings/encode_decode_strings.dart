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
