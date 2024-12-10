import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taqwa/core/helpers/space_vector.dart';
import 'package:taqwa/core/theming/styles.dart';
import 'package:taqwa/features/home/data/models/sepcialization_reponse_model.dart';

class DoctorsItem extends StatelessWidget {
  const DoctorsItem({super.key, required this.doctorModel});
  final Doctors? doctorModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              'https://www.pngitem.com/pimgs/m/141-1413343_transparent-killua-png-png-download.png',
              height: 110.h,
              width: 120.w,
              fit: BoxFit.cover,
            ),
          ),
          horizontalSpace(16),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctorModel?.name ?? "name",
                style: TextStyles.font18DarkBlueBold,
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpace(5),
              Text(
                '${doctorModel?.degree} | ${doctorModel?.phone}',
                style: TextStyles.font12GrayMedium,
              ),
              verticalSpace(5),
              Text(
                doctorModel?.email ?? "email",
                style: TextStyles.font12GrayMedium,
              )
            ],
          )),
        ],
      ),
    );
  }
}
