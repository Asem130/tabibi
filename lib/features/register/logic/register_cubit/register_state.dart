import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taqwa/core/networking/api_error_handler.dart';
import 'package:taqwa/core/networking/api_error_model.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState<T> with _$RegisterState<T> {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.loding() = Loading;
  const factory RegisterState.success(T data) = Success<T>;
  const factory RegisterState.error(ApiErrorModel apiErrorModel) = Error;
}
