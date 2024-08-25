import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottom_navbar_state.dart';

class BottomNavbarCubit extends Cubit<int> {
  BottomNavbarCubit() : super(0);

  @override
  void onChange(Change<int> change) {
    print(change);
    super.onChange(change);
  }

  void changeIndex(int index) {
    emit(index);
  }
}
