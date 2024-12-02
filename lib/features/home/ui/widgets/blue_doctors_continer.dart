import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taqwa/core/helpers/space_vector.dart';
import 'package:taqwa/core/theming/colors.dart';
import 'package:taqwa/core/theming/styles.dart';

class BlueDoctorsContiner extends StatelessWidget {
  const BlueDoctorsContiner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
            width: double.infinity,
            height: 165.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/blue_continer.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\nschedule with\nnearest doctor',
                  style: TextStyles.font18WhiteMedium,
                ),
                verticalSpace(16),
                Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorsManager.wight,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(48.0),
                            )),
                        onPressed: () {},
                        child: Text(
                          'Find Nearby',
                          style: TextStyles.font13BlueRegular,
                        ))),
              ],
            ),
          ),
          Positioned(
            right: 0.w,
            top: 0,
            height: 200.h,
            child: Image.asset(
              'assets/images/jon.png',
            ),
          )
        ],
      ),
    );
  }
}
