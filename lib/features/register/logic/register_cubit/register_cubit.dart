import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taqwa/core/networking/api_error_model.dart';
import 'package:taqwa/features/register/data/models/register_request_body.dart';
import 'package:taqwa/features/register/data/repos/register_repo.dart';
import 'package:taqwa/features/register/logic/register_cubit/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this._registerRepo) : super(const RegisterState.initial());
  final RegisterRepo _registerRepo;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitRegisterStates() async {
    emit(const RegisterState.loding());
    final response = await _registerRepo.register(
      RegisterRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0,
      ),
    );
    response.when(success: (registerResponse) {
      emit(RegisterState.success(registerResponse));
    }, failure: (apiErrorModel) {
      emit(RegisterState.error(apiErrorModel));
    });
  }
}
