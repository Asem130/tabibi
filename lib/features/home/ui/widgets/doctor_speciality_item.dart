import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taqwa/core/helpers/space_vector.dart';
import 'package:taqwa/core/theming/colors.dart';
import 'package:taqwa/core/theming/styles.dart';
import 'package:taqwa/features/home/data/models/sepcialization_reponse_model.dart';

class DoctorSpecialityItem extends StatelessWidget {
  const DoctorSpecialityItem(
      {super.key, required this.itemIndex, required this.specializationsData});
  final int itemIndex;
  final SpecializationsData? specializationsData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: itemIndex == 0 ? 0 : 24.w,
      ),
      child: Column(
        children: [
          CircleAvatar(
              radius: 28,
              backgroundColor: ColorsManager.lightBlue,
              child: SvgPicture.asset('assets/svgs/brain_icon.svg')),
          verticalSpace(8),
          Text(
            specializationsData?.name ?? 'specialization',
            style: TextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
