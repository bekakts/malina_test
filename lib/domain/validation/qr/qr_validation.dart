class QrValidation {
  Future<String> validateQRCode(String? rawValue) async {
    if (rawValue == null || rawValue.isEmpty) {
      throw Exception('QR code is empty or null');
    }
    if (rawValue.contains('ERROR')) {
      throw Exception('Invalid QR code');
    }
    return rawValue;
  }
}
