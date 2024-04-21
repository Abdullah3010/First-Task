extension StackTraceExtension on StackTrace {
  StackTrace limitStackTracePrint() {
    final List<String> lines = toString().split('\n');
    final String limitedStackTrace = lines.take(2).join('\n');
    return StackTrace.fromString(limitedStackTrace);
  }
}
