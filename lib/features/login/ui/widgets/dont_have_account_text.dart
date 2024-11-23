import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taqwa/core/helpers/extensions.dart';
import 'package:taqwa/core/routing/routes.dart';
import 'package:taqwa/core/theming/styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
            text: 'Don\'t y have an account yet? ',
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.registerScreen);
              },
            text: 'Sign Up ',
            style: TextStyles.font13BlueSemiBold,
          )
        ]));
  }
}
