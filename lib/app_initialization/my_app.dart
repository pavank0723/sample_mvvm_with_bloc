import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_mvvm_with_bloc/routes/routes.dart';
import 'package:sample_mvvm_with_bloc/ui/widgets/widgets.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key, required this.providers});

  // This widget is the root of your application.

  final _appRoute = AppRouter();

  final List<RepositoryProvider> providers;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: providers,
      child: MaterialApp.router(
        title: 'Sample MVVM',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            textTheme: GoogleFonts.robotoTextTheme(
              Theme.of(context).textTheme,
            ),
            filledButtonTheme: FilledButtonThemeData(
                style: ButtonStyle(
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ))),
            outlinedButtonTheme: OutlinedButtonThemeData(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ))),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ))),
            inputDecorationTheme: InputDecorationTheme(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
            colorScheme:
                ColorScheme.fromSeed(seedColor: const Color(0xffFE2C2D)),
            useMaterial3: true,
            appBarTheme: const AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.white,
                statusBarIconBrightness: Brightness.dark,
                statusBarBrightness: Brightness.light,
                systemNavigationBarColor: Colors.white,
                systemNavigationBarIconBrightness: Brightness.dark,
              ),
            )),
        routerConfig: _appRoute.config(),
        builder: FlutterSmartDialog.init(
          //default loading widget
          loadingBuilder: (String msg) => const CustomLoading(type: 1),
        ),
      ),
    );
  }
}
