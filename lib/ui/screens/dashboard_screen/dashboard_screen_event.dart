part of 'dashboard_screen_bloc.dart';

@immutable
sealed class DashboardScreenEvent {}

class LoadPage extends DashboardScreenEvent {}
