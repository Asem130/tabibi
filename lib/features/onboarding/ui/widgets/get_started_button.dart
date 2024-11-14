import 'package:flutter/material.dart';
import 'package:taqwa/core/helpers/extensions.dart';
import 'package:taqwa/core/routing/routes.dart';
import 'package:taqwa/core/theming/colors.dart';
import 'package:taqwa/core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(const Size(double.infinity,52)),
        backgroundColor: WidgetStateProperty.all(ColorsManger.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))
      ),
        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        child:  Text('Get Started',style: TextStyles.font16WhiteSemiBold));
  }
}
