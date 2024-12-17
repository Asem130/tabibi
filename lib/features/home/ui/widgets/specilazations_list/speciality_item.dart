import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taqwa/core/helpers/space_vector.dart';
import 'package:taqwa/core/theming/colors.dart';
import 'package:taqwa/core/theming/styles.dart';
import 'package:taqwa/features/home/data/models/sepcialization_reponse_model.dart';

class SpecialityItem extends StatelessWidget {
  const SpecialityItem(
      {super.key,
      required this.itemIndex,
      required this.specializationsData,
      required this.selectedIndex});
  final int itemIndex;
  final SpecializationsData? specializationsData;
  final int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: itemIndex == 0 ? 0 : 24.w,
      ),
      child: Column(
        children: [
          selectedIndex == itemIndex
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorsManager.mainBlue),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: ColorsManager.lightBlue,
                    child: Image.asset(
                      'assets/images/brain_icon.png',
                      width: 36.w,
                      height: 36.h,
                    ),
                  ),
                )
              : CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorsManager.lightBlue,
                  child: Image.asset('assets/images/brain_icon.png',
                  width: 30.w,
                  height: 30.h,
                  )),
          verticalSpace(8),
          Text(
            specializationsData?.name ?? 'specialization',
            style:selectedIndex == itemIndex? TextStyles.font14BlueSemiBold:TextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
