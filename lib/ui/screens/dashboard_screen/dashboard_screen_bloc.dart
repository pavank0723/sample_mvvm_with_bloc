import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:sample_mvvm_with_bloc/utils/utils.dart';

part 'dashboard_screen_event.dart';
part 'dashboard_screen_state.dart';

class DashboardScreenBloc extends Bloc<DashboardScreenEvent, DashboardScreenState> {
  DashboardScreenBloc() : super(DashboardScreenInitial()) {
    on<DashboardScreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
