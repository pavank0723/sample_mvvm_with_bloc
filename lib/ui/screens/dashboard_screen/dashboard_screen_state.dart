part of 'dashboard_screen_bloc.dart';

@immutable
sealed class DashboardScreenState {}

final class DashboardScreenInitial extends DashboardScreenState {}

class LoadingInitialUI extends DashboardScreenState {}

class NoDashboardData extends DashboardScreenState {}

class UIGenerated extends DashboardScreenState {
  final List<Widget> pages;
  final List<String> titles;

  UIGenerated(this.pages, this.titles);
}

class ErrorDashBoardShow extends DashboardScreenState {
  final String msg;
  final msgType = ToastType.error;

  ErrorDashBoardShow(this.msg);
}
