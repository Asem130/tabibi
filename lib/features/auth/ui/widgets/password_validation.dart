import 'package:flutter/material.dart';
import 'package:taqwa/core/helpers/space_vector.dart';
import 'package:taqwa/core/theming/colors.dart';
import 'package:taqwa/core/theming/styles.dart';

class PasswordValidation extends StatelessWidget {
  const PasswordValidation(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecialCharacter,
      required this.hasNumber,
      required this.hasMinLength});
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinLength;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At lest 1 lowercase letter', hasLowerCase),
        verticalSpace(2),
        buildValidationRow('At lest 1 uppercase letter', hasUpperCase),
        verticalSpace(2),
        buildValidationRow('At lest 1 number ', hasNumber),
        verticalSpace(2),
        buildValidationRow(
            'At lest 1 special character letter', hasSpecialCharacter),
        verticalSpace(2),
        buildValidationRow('At lest 8 characters length', hasMinLength),
      ],
    );
  }
}

Widget buildValidationRow(String text, bool hasValidation) {
  return Row(
    children: [
      const CircleAvatar(
        radius: 2.5,
        backgroundColor: ColorsManger.gray,
      ),
      horizontalSpace(6),
      Text(
        text,
        style: TextStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidation ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidation ? ColorsManger.gray : ColorsManger.darkBlue),
      )
    ],
  );
}
