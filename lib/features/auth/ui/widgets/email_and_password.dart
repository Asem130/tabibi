import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taqwa/core/helpers/space_vector.dart';
import 'package:taqwa/core/widgets/app_text_form_feild.dart';
import 'package:taqwa/features/auth/logic/login_cubit/login_cubit.dart';
import 'package:taqwa/features/auth/ui/widgets/password_validation.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  late TextEditingController passwordController;

  bool isObscureText = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacter = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  @override
  void initState() {
    passwordController = context.read<LoginCubit>().passwordController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          children: [
            AppTextFormFeild(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please enter a valid email';
                }
              },
              hintText: 'Email',
            ),
            verticalSpace(18),
            AppTextFormFeild(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please enter a valid password';
                }
              },
              isObscureText: isObscureText,
              hintText: 'Password',
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
                child: Icon(
                  isObscureText ? Icons.visibility_off : Icons.visibility,
                ),
              ),
            ),
            verticalSpace(24),
            PasswordValidation(
              hasLowerCase: hasLowerCase,
              hasMinLength: hasMinLength,
              hasNumber: hasNumber,
              hasSpecialCharacter: hasSpecialCharacter,
              hasUpperCase: hasUpperCase,
            ),
          ],
        ));
  }
}
