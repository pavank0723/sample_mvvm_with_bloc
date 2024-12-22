import 'package:flutter/material.dart';
import 'package:sample_mvvm_with_bloc/app_initialization/providers.dart';
import 'package:sample_mvvm_with_bloc/base/base.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_initialization/my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var preferences = await SharedPreferences.getInstance();
  var providers =
      await AppProviders.getAppProviders(preferences, AppConstants.baseApiUrl);

  runApp(
    MyApp(
      providers: providers,
    ),
  );
}
