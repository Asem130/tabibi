
import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_request_body.g.dart';
@JsonSerializable()
class RegisterRequestBody{
  RegisterRequestBody({required this.email, required  this.password});
final String email;
final String password ;

 
 Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}