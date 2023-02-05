import 'package:formz/formz.dart';

enum ConfirmPasswordValidationError {
  NotMatch,
}

class ConfirmPassword
    extends FormzInput<String, ConfirmPasswordValidationError> {
  final String password;

  const ConfirmPassword.pure()
      : password = '',
        super.pure('');

  ConfirmPassword.dirty(this.password, super.value) : super.dirty();

  @override
  ConfirmPasswordValidationError? validator(String value) {
    if (password != value) return ConfirmPasswordValidationError.NotMatch;
    return null;
  }
}
