import 'package:flutter/material.dart';
import 'package:taqwa/core/theming/styles.dart';

class TermsAndConditionText extends StatelessWidget {
  const TermsAndConditionText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
            text: 'By logging, you agree to our ',
            style: TextStyles.font13LightGrayRegular,
          ),
          TextSpan(
            text: 'Terms & Conditions\n',
            style: TextStyles.font13DarkBlueMedium,
          ),
           TextSpan(
            text: 'and ',
            style: TextStyles.font13LightGrayRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: 'PrivacyPolicy.',
            style: TextStyles.font13DarkBlueMedium,
          ),

        ]));
  }
}
