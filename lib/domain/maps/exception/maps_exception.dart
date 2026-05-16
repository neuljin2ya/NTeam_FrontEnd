class MapsException implements Exception {
  MapsException(this.message);

  final String message;

  @override
  String toString() => 'MapsException: $message';
}
