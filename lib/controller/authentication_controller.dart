import 'package:assessment/constant/language_constant.dart';
import 'package:assessment/models/authentication_model.dart';
import 'package:flutter/material.dart';

class AuthenticationController with ChangeNotifier {
  Locale? _locale;
  ValidationItem _phoneNumber = ValidationItem(null, null);
  ValidationItem _code = ValidationItem(null, null);

  // getter

  Locale get localeVal => _locale!;

  ValidationItem get phoneNumber => _phoneNumber;

  ValidationItem get code => _code;

  bool get isValid {
    if (_phoneNumber.value != null) {
      return true;
    } else {
      return false;
    }
  }

  //Setter
  void changeNumber(String number, BuildContext context) {
    if (number.length == 10) {
      _phoneNumber = ValidationItem(number, null);
    } else if (number.length < 10) {
      _phoneNumber = ValidationItem(null, translation(context).invalidInput);
    } else {
      _phoneNumber = ValidationItem(null, translation(context).canNotBeEmpty);
    }
    notifyListeners();
  }

  void changeSMSCode(String smsCode, BuildContext context) {
    if (smsCode.length == 6) {
      _code = ValidationItem(smsCode, null);
    } else if (smsCode.length < 6) {
      _code = ValidationItem(null, translation(context).invalidInput);
    } else {
      _code = ValidationItem(null, translation(context).canNotBeEmpty);
    }
    notifyListeners();
  }

// void setLocalVal(Locale value) {
//   localeVal = value;
//   notifyListeners();
// }
}
