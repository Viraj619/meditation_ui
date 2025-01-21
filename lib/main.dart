
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/presentation/screens/splash_screen.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: [Locale('en'),Locale('hi')],
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