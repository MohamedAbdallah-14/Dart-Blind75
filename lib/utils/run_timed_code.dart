import 'package:blind75/utils/duration_extention.dart';

T runTimedCode<T>(T Function() code) {
  final stopwatch = Stopwatch()..start();
  final output = code();
  print('executed in ${stopwatch.elapsed.toHumanReadableString()}');

  return output;
}
