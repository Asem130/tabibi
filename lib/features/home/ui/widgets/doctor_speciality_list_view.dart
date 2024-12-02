import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taqwa/core/helpers/space_vector.dart';
import 'package:taqwa/core/theming/styles.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsetsDirectional.only(
          start: index == 0 ? 0 : 24.w,
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: Colors.lightBlue,
              child: SvgPicture.asset(
                'assets/svgs/brain_icon.svg',
                height: 40.h,
                width: 40.w,
              ),
            ),
            verticalSpace(8),
            Text(
              'Neurologic',
              style: TextStyles.font12DarkBlueRegular,
            ),
          ],
        ),
      ),
      itemCount: 8,
    ));
  }
}
