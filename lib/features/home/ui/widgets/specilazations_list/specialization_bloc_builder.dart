import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taqwa/core/helpers/space_vector.dart';
import 'package:taqwa/features/home/logic/home_cubit.dart';
import 'package:taqwa/features/home/logic/home_state.dart';
import 'package:taqwa/features/home/ui/widgets/doctors_list/doctors_shimmer_loading.dart';
import 'package:taqwa/features/home/ui/widgets/specilazations_list/speciality_list_view.dart';
import 'package:taqwa/features/home/ui/widgets/specilazations_list/specializations_shimmer_loading.dart';

class SpecializationBlocBuilder extends StatelessWidget {
  const SpecializationBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationLoading ||
          current is SpecializationSuccess ||
          current is SpecializationError,
      builder: (context, state) {
        return state.maybeWhen(
            specializationLoding: () => setupLoading(),
            specializationSuccess: (specializationDataList) {
              var specializationList = specializationDataList;
              return setupSuccess(specializationList);
            },
            specializationError: (error) => setupError(),
            orElse: () => SizedBox.shrink());
      },
    );
  }
}

Widget setupLoading() {
  return Expanded(
    child: Column(
      children: [
        const SpecialityShimmerLoading(),
        verticalSpace(8),
        const DoctorsShimmerLoading(),
      ],
    ),
  );
}

Widget setupSuccess(specializationList) {
  return SpecialityListView(
    specializationList: specializationList ?? [],
  );
}

Widget setupError() {
  return SizedBox.shrink();
}
