import 'package:taqwa/core/networking/api_error_handler.dart';
import 'package:taqwa/core/networking/api_result.dart';
import 'package:taqwa/core/networking/api_service.dart';
import 'package:taqwa/features/register/data/models/register_request_body.dart';
import 'package:taqwa/features/register/data/models/register_response.dart';

class RegisterRepo {
  RegisterRepo(this._apiServices);
  final ApiServices _apiServices;
  Future<ApiResult<RegisterResponse>> register(
      RegisterRequestBody registerRequestBody) async {
    try {
      final response = await _apiServices.register(registerRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }
}
