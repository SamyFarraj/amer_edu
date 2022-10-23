part of 'translations_operations_cubit.dart';

@immutable
abstract class TranslationsOperationsState {}

class TranslationsOperationsInitial extends TranslationsOperationsState {}
class GetTranslationsStatus extends TranslationsOperationsState {}
class SuccessGetTranslationsStatus extends TranslationsOperationsState {}
class FieldGetTranslationsStatus extends TranslationsOperationsState {}
class RefreshLevelStatus extends TranslationsOperationsState {}
