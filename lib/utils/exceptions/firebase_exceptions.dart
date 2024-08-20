class VFirebaseException implements Exception {
  final String code;

  VFirebaseException(this.code);

  String get message {
    switch (code) {
      case 'unknown':
        return 'An unknown Firebase error occured. Please try again.';
      case 'invalid-custom-token':
        return 'The custom token format is incorrect. Please check your custom token.';
      case 'custom-token-mismatch':
        return 'The custom token corresponds to a different audience.';
      case 'user-disabled':
        return 'The user account has been disabled.';
      case 'user-not-found':
        return 'No user found for the given email or UID.';
      case 'invalid-email':
        return 'The email address provided is invalid. Please enter a valid email.';
      case 'email-already-in-use':
        return 'The email address is already registered. Please use a different email.';
      case 'wrong-password':
        return 'Incorrect password. Please check your password and try again.';
      case 'weak-password':
        return 'The password is too weak. Please choose a stronger password.';
      case 'provider-alreay-linked':
        return 'The account is lreay linked with another provider.';
      case 'operation-not-allowed':
        return 'This opertaion is not allowed. Contact support for assistance.';
      case 'invalid-credential':
        return 'The supplied credential is malformed or has expired.';
      case 'invalid-verification-code':
        return 'Invalid verification code. Please enter a valid code';
      case 'invalid-verification-id':
        return 'Invalid verification ID. Please request a new verification code';
      case 'captcha-check-failed':
        return 'The reCAPTCHA reponse is invalid. Please try again.';
      case 'app-not-authorized':
        return 'The app is not authorized to use Firebase Authentication with the provided API key.';
      case 'keychain-error':
        return 'A keychain error occured. Please check the keychain and try again.';
      case 'internal-error':
        return 'An internal authentication error occured. please try again later.';
      case 'invalid-app-credential':
        return 'The app credential is invalid. Please provide a valid app credential';
      case 'user-mismatch':
        return 'The supplied credentials do not correspond to the previously signed in user.';
      case 'requires-recent-login':
        return 'This operation is sensitive and requires recent authentication. Please log in again.';
      case 'quota-exceeded':
        return 'Quota exceeded. Please try again later';
      case 'account-exists-with-different-credential':
        return 'An account already exists with the same email but different sign-in credential.';
      case 'missing-iframe-start':
        return 'The email template is missing the iframe start tag.';
      case 'missing-iframe-end':
        return 'The email template is missing the iframe end tag.';
      case 'missing-iframe-src':
        return 'The email template is missing the iframe src attribute.';
      case 'auth-domain-config-required':
        return 'The authDomain configuration is required for the action code verification link.';
      case 'missing-app-credential':
        return 'The app credential is missing. Please provide valid app credentials';
      case 'session-cookie-expired':
        return 'The Firebase session cookie has expired. Please sign in again';
      case 'uid-already-exists':
        return 'The provided user ID is already in use by another user.';
      case 'web-storage-unsupported':
        return 'Web storage is not supported or is disabled.';
      case 'app-deleted':
        return 'This instance of Firebase has been deleted.';
      case 'user-token-mismatch':
        return 'The provided user\'s token has a mismatch with the authenticated user\'s user ID.';
      case 'invalid-message-payload':
        return 'The email template verification message payload is invalid.';
      case 'invalid-sender':
        return 'The email template sender is invalid. Please verify the sender\'s email.';
      case 'invalid-recipient-email':
        return 'The recipient email address is invalid. Please provide a valid recipient email.';
      case 'user-token-expired':
        return 'The user\'s token has expired, and authentication is required. Please sign in again.';
      case 'INVALID_LOGIN_CREDENTIALS':
        return 'Invalid login credentials.';
      case 'expired-action-code':
        return 'The action code has expired. Please request a new actio code.';
      case 'invalid-action-code':
        return 'The action code is invalid. please check the code and try again.';
      case 'credential-already-in-use':
        return 'This credential is already associated with a different user account';
      default:
        return 'An unexpected Firebase error occured. Please try again.';
    }
  }
}
