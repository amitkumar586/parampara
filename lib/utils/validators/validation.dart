class Validator {
  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == "" || value!.isEmpty) {
      return "$fieldName is required";
    }
    return null;
  }

  static String? validationEmail(String? value) {
    final regex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    if (!regex.hasMatch(value!)) {
      return "Invalid email";
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value!.length < 6) {
      return "Password must be at least 6 characters long";
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return "Password must contain at one uppercase letter";
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return "Password must contain at one number";
    }
    if (value.contains(RegExp(r'[!@#$%^&*(),.?/\[]"<>|-+_;]'))) {
      return "Password must contain at one special character";
    }
    return null;
  }

  static String? phoneValidator(String? value) {
    RegExp rs = RegExp(r'^\d{10}$');
    if (!rs.hasMatch(value!)) {
      return "Invald phone number format (10 digits required)";
    }
    if (value.length != 10) {
      return "Phone number is invalid ";
    }
    return null;
  }

  static String? panValidator(String? value) {
    if (!RegExp(r'^[A-Za-z]{5}[0-9]{4}[A-Za-z]{1}$').hasMatch(value!)) {
      return 'Please enter valid pan';
    } else {
      return null;
    }
  }

  static String? aadhaarValidator(String? value) {
    if (!RegExp(r'^[01]\d{3}[\s-]?\d{4}[\s-]?\d{4}$').hasMatch(value!)) {
      return 'Please enter valid aadhaar number';
    } else {
      return null;
    }
  }

  static String? nameValidator(String? value) {
    if (value!.isEmpty) {
      return "Please enter your name";
    }
    return null;
  }

  static String? bankNameValidator(String? value) {
    if (value!.isEmpty) {
      return "Please enter bank name";
    }
    return null;
  }

  static String? accountNumber(String? value) {
    if (value!.length < 10) {
      return "Please enter correct account number";
    }
    return null;
  }

  static String? ifscNumber(String? value) {
    if (value!.length != 11) {
      return "Please enter correct account number";
    }
    return null;
  }

  static String? nationalityValidator(String? value) {
    if (value!.isEmpty) {
      return "Please enter your nationality";
    }
    return null;
  }

  static String? houseValidator(String? value) {
    if (value!.isEmpty) {
      return "Please enter your House no.";
    }
    return null;
  }

  String? areaValidator(String? value) {
    if (value!.isEmpty) {
      return "Please enter your Road Name / Area / Colony ";
    }
    return null;
  }

  String? cityValidator(String? value) {
    if (value!.isEmpty) {
      return "Please enter your City ";
    }
    return null;
  }

  static String? usernameValidator(String? value) {
    if (value!.isEmpty) {
      return "Please provide an unique username";
    }
    if (value.length < 3) {
      return "Username is too short";
    }
    return null;
  }

  static String? countryValidator(String? value) {
    if (value!.isEmpty) {
      return "Select your country";
    }
    return null;
  }

  static String? stateValidator(String? value) {
    if (value!.isEmpty) {
      return "Select your State";
    }
    return null;
  }

  static String? commentsValidator(String? value) {
    if (value!.isEmpty) {
      return "Comment is empty!";
    }
    if (value.length < 5) {
      return "Comment is too short!";
    }
    return null;
  }

  static String? genderValidator(String? value) {
    if (value!.isEmpty) {
      return "Gender is required";
    }
    return null;
  }

  static String? dobValidator(String? value) {
    if (value!.isEmpty) {
      return "Date if Birth is required";
    }
    return null;
  }

  static String? pinValidator(String? value) {
    if (value!.length != 6) {
      return "Pin Code is invalid";
    }
    return null;
  }
}
