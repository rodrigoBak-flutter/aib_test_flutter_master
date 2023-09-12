import 'package:aib_test_flutter_master/core/utils/enums/status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:package_info_plus/package_info_plus.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  Future<void> init() async {
    emit(
      state.copyWith(
        status: Status.loading,
      ),
    );
    try {
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      emit(
        state.copyWith(
          status: Status.loading,
          appName: packageInfo.appName,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: Status.error,
        ),
      );
    }
  }
}
