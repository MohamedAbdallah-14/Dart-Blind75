extension DurationExtensions on Duration {
  String toHumanReadableString() {
    final parts = <String>[];
    if (inHours > 0) parts.add('$inHours h');
    if (inMinutes > 0) parts.add('$inMinutes m');
    if (inSeconds > 0) parts.add('$inSeconds s');
    if (inMilliseconds > 0) parts.add('$inMilliseconds ms');
    if (inMicroseconds > 0) parts.add('$inMicroseconds µs');
    return parts.join(', ');
  }
}
