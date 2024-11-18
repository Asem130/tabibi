import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taqwa/core/helpers/space_vector.dart';
import 'package:taqwa/core/theming/styles.dart';
import 'package:taqwa/core/widgets/app_text_button.dart';
import 'package:taqwa/core/widgets/app_text_form_feild.dart';
import 'package:taqwa/features/auth/ui/widgets/already_have_account_text.dart';
import 'package:taqwa/features/auth/ui/widgets/terms_and_condition_text.dart';

class LoginSceen extends StatefulWidget {
  const LoginSceen({super.key});

  @override
  State<LoginSceen> createState() => _LoginSceenState();
}

final formKey = GlobalKey<FormState>();
bool isObscureText = true;

class _LoginSceenState extends State<LoginSceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait \nto see what you\'ve been up to since you\nlast logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormFeild(
                        hintText: 'Email',
                      ),
                      verticalSpace(18),
                      AppTextFormFeild(
                        isObscureText: isObscureText,
                        hintText: 'Password',
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      verticalSpace(24),
                      Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyles.font13BlueRegular,
                          )),
                      verticalSpace(40),
                      AppTextButton(
                        buttonText: 'Login',
                        textStyle: TextStyles.font16WightSemibold,
                        onPressed: () {},
                      ),
                      verticalSpace(16),
                      const TermsAndConditionText(),
                      verticalSpace(60),
                      const AlreadyHaveAccountText()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
