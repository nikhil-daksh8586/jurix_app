

class TValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }

    // Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    // check password length
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    // check password uppercase
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must contain at least one uppercase letter';
    }
    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'Password must contain at least one lowercase letter';
    }
    // check password number
    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return 'Password must contain at least one lowercase letter';
    }
    // check password special character
    if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
      return 'Password must contain at least one special character';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    }
    // Indian phone number format validation
    final phoneNumberRegExp = RegExp(r'^[6-9]\d{9}$');

    if (!phoneNumberRegExp.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }
    return null;
  }
}