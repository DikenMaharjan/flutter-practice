import 'package:formz/formz.dart';

enum EmailValidationError { invalid }

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('');

  const Email.dirty([super.value = '']) : super.dirty();


  @override
  EmailValidationError? validator(String? value) {
    return value?.isNotEmpty == true
        ? null
        : EmailValidationError.invalid;
  }
}
