import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taqwa/features/home/logic/specialization_cubit.dart';
import 'package:taqwa/features/home/logic/specialization_state.dart';
import 'package:taqwa/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:taqwa/features/home/ui/widgets/doctors_list_view.dart';

class SpecializationAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
            loding: () => setupLoading(),
            success: (specializationsResponseModel) {
              var specializationList =
                  specializationsResponseModel.specializationDataList;
              return setupSuccess(specializationList);
            },
            error: (error) => setupError(),
            orElse: () => SizedBox.shrink());
      },
    );
  }
}

Widget setupLoading() {
  return SizedBox(
    height: 100.h,
    child: Center(child: CircularProgressIndicator()),
  );
}

Widget setupSuccess(specializationList) {
  return Expanded(
    child: Column(
      children: [
        DoctorSpecialityListView(
          specializationList: specializationList ?? [],
        ),
        DoctorsListView(
          doctorsList: specializationList?[0]?.doctorsList,
        ),
      ],
    ),
  );
}

Widget setupError() {
  return SizedBox.shrink();
}
