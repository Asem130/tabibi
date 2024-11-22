import 'package:taqwa/core/networking/api_error_handler.dart';
import 'package:taqwa/core/networking/api_result.dart';
import 'package:taqwa/core/networking/api_service.dart';
import 'package:taqwa/features/auth/data/models/login_request_body.dart';
import 'package:taqwa/features/auth/data/models/login_response.dart';

class LoginRepo {
  LoginRepo(this._apiServices);
  final ApiServices _apiServices;
  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiServices.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
