import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sample_mvvm_with_bloc/base/base.dart';

@RoutePage()
class DashboardScreen extends StatefulWidget implements AutoRouteWrapper {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return const DashboardScreen();
  }
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      body: Column(
        children: [],
      ),
    );
  }
}
