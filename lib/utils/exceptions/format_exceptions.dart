class VFormatException implements Exception {
  final String message;

  // Default constructure with a generic error message
  const VFormatException(
      [this.message =
          'An unexpected format error occured. Please check your input.']);

  // Create a format exception from a specific error message
  factory VFormatException.fromMessage(String message) {
    return VFormatException(message);
  }

  // Get the corresponding error message
  String get formattedMessage => message;

  // Create a format exception from a specific error code
  factory VFormatException.fromCode(String code) {
    switch (code) {
      case 'invalid-email-format':
        return const VFormatException(
            'The email address format is invalid. Please enter a valid email.');
      case 'invalid-phone-number-format':
        return const VFormatException(
            'The provided phone number is invalid. Please enter a valid phone number.');
      case 'invalid-date-format':
        return const VFormatException(
            'The date format is invalid. Please enter a valid date');
      case 'invalid-url-format':
        return const VFormatException(
            'The URL format is invalid. Please enter a valid URL.');
      case 'invalid-credit-card-format':
        return const VFormatException(
            'The credit card format is invalid. Please enter a valid credit card number,');
      case 'invalid-numeric-format':
        return const VFormatException(
            'The input should be a valid numeric format.');
      default:
        return const VFormatException(
            'Unexpected formatting error. Please try again');
    }
  }
}
