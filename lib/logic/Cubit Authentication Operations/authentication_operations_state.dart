part of 'authentication_operations_cubit.dart';

@immutable
abstract class AuthenticationOperationsState {}

class AuthenticationOperationsInitial extends AuthenticationOperationsState {}
class EditPasswordState extends AuthenticationOperationsState {}
class SuccessFullEditPasswordState extends AuthenticationOperationsState {}
class RefreshLevelState extends AuthenticationOperationsState {}
class SuccessFullLoginState extends AuthenticationOperationsState {}
class GetVerifyCodeNumberState extends AuthenticationOperationsState {}
class ValidationCodeIsCorrect extends AuthenticationOperationsState {}

class CheckPassword extends AuthenticationOperationsState {}

class SuccessfulLogin extends AuthenticationOperationsState {}

class ErrorPasswordState extends AuthenticationOperationsState {}

class SuccessSignUpState extends AuthenticationOperationsState {}

class FailedSignUpState extends AuthenticationOperationsState {}
class CheckInformation extends AuthenticationOperationsState {}

class EditAccountInfo extends AuthenticationOperationsState {}
class SuccessStatus extends AuthenticationOperationsState {}
class FailureStatus extends AuthenticationOperationsState {}

class ChangeCurrentGender extends AuthenticationOperationsState {}
class ChangeDateState extends AuthenticationOperationsState {}

class ChangeSuffixState extends AuthenticationOperationsState {}



