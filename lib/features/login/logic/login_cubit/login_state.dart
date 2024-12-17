import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taqwa/core/networking/api_error_model.dart';
part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loding() = LoginLoding;
  const factory LoginState.success(T data) = LoginSuccess<T>;
  const factory LoginState.error(ApiErrorModel apiErrorModel) = LoginError;
}
