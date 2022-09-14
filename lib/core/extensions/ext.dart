extension StringExtension on String {
  String capitalize() {
    if (isNotEmpty) {
      return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
    }
    return '';
  }

  String toTitleCase() {
    if (isNotEmpty) {
      return replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.capitalize()).join(' ');
    }
    return '';
  }
}
