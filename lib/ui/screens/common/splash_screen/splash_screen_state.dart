part of 'splash_screen_cubit.dart';

@immutable
sealed class SplashScreenState {}

final class SplashScreenInitial extends SplashScreenState {}

class LoadingUserData extends SplashScreenState {}

class NotLoggedIn extends SplashScreenState {}

class DataLoaded extends SplashScreenState {
  final int roleId;

  DataLoaded(this.roleId);
}
