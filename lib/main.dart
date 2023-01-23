
import 'package:clone_fb/routes/routes.dart';
import 'package:clone_fb/widget/language_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
          return GetMaterialApp(
            translations: LanguagePicker(),
            locale: Locale('pt', 'BR'),
            debugShowCheckedModeBanner: false,
            title: 'Clone Facebook',
            initialRoute: Routes.getSplashScreen(),
            getPages: Routes.routes,
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
          );
        }
}
