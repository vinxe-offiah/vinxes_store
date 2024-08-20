/// Custom exception class to handle various Firebase authentication-related errors
class VFirebaseAuthException implements Exception {
  // Error code associated with the exception
  final String code;

  // Constructor that takes an error code.
  VFirebaseAuthException(this.code);

  // Get error message based on the error code
  String get message {
    switch (code) {
      case 'email-already-in-use':
        return 'The email address is already registered. Please use a different email.';
      case 'invalide-email':
        return 'The email address provided is invalid. Please enter a valid email.';
      case 'weak-password':
        return 'The password is too weak. Please choose a stronger password';
      case 'user-disabled':
        return 'This user account has been disabled. Please contact support for assistance.';
      case 'user-not-found':
        return 'Invalid login details. User not found';
      case 'wrong-password':
        return 'Incorrect password. Please check your password and try again.';
      case 'invalid-verification-code':
        return 'Invalid verification code. Please enter a valid code';
      case 'invalid-verification-id':
        return 'Invalid verification ID. Please request a new verification code';
      case 'quota-exceeded':
        return 'Quota exceeded. Please try again later';
      case 'email-already-exist':
        return 'The email address already exists. Please use a different email.';
      case 'provider-alreay-linked':
        return 'The account is lreay linked with another provider.';
      case 'requires-recent-login':
        return 'This operation is sensitive and requires recent authentication. Please log in again.';
      case 'credential-already-in-use':
        return 'This credential is already associated with a different user account.';
      case 'user-mismatch':
        return 'The supplied credentials do not correspond to the previously signed in user.';
      case 'account-exists-with-different-credential':
        return 'An account already exists with the same email but different sign-in credential.';
      case 'operation-not-allowed':
        return 'This opertaion is not allowed. Contact support for assistance.';
      case 'invalid-action-code':
        return 'The action code is invalid. Please check the code and try again.';
      case 'user-token-expired':
        return 'The user\'s token has expired, and authentication is required. Please sign in again.';
      case 'invalid-credential':
        return 'The supplied credential is malformed or has expired.';
      case 'invalid-message-payload':
        return 'The email template verification message payload is invalid.';
      default:
        return 'An unexpected Firebase error occured. Please try again.';
    }
  }
}
