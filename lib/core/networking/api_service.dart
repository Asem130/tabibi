import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:taqwa/core/networking/api_constants.dart';
import 'package:taqwa/features/login/data/models/login_request_body.dart';
import 'package:taqwa/features/login/data/models/login_response.dart';
import 'package:taqwa/features/register/data/models/register_request_body.dart';
import 'package:taqwa/features/register/data/models/register_response.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;
  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
  @POST(ApiConstants.register)
  Future<RegisterResponse> register(
    @Body() RegisterRequestBody signupRequestBody,
  );
}
