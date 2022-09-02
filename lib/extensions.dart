/// This document all public members linter can suck it
extension StringX on String {
  /// Capitalizes the first character of a string
  String capitalize() => substring(0, 1).toUpperCase() + substring(1);
}
