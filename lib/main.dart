
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/presentation/screens/splash_screen.dart';
import 'package:new_flutter_project/features/home/boardings/boading_8.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/home/gruop%20support/journal/mood%20tracker/mood_tracker.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: [Locale('en'),Locale('hi'),Locale('gu'),Locale('bn'),Locale('fr')],
      path:'assert/translate',
      fallbackLocale:Locale('en',),
      child: MainApp()));
}
class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates:context.localizationDelegates,
      supportedLocales:context.supportedLocales,
      locale:context.locale,
      home:SplashScreen(),
    );
  }
}