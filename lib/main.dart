import 'package:first_app/constants/color.dart';
import 'package:first_app/constants/constants.dart';
import 'package:first_app/dashboard/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: MyColors.navy,
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xfffcfcfc),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: .2,
          titleTextStyle: TextStyle(fontFamily: Bold , color: Color(0xffd323232)),
          iconTheme: IconThemeData(color: MyColors.primaryColor)
        )
      ),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: MyColors.navy,
          scaffoldBackgroundColor: const Color(0xfffcfcfc),
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              elevation: .2,
              titleTextStyle: TextStyle(fontFamily: Bold , color: Color(0xffd323232)),
              iconTheme: IconThemeData(color: MyColors.primaryColor)
          )
      ),
      home: WelcomeScreen(),
    );

  }
}
