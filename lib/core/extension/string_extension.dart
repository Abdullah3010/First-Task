extension StringExtension on String {
  String getFileName() {
    return split('/').last;
  }
}
