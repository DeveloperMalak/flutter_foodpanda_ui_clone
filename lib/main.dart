import 'package:flutter/material.dart';

import 'Dashboard/splashscreen.dart';
import 'Dashboard/welcomeScreen.dart';
import 'constants/colors.dart';
import 'constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch:MyColors.navy,
        brightness: Brightness.light,
          scaffoldBackgroundColor: const Color(0xfffcfcfc),
        appBarTheme: const AppBarTheme(
            backgroundColor:Colors.white,
          elevation:.2,
          titleTextStyle:TextStyle(color:Color(0xff323232)),
          iconTheme:IconThemeData(color:MyColors.primaryColor)
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme:ThemeData(
        brightness:Brightness.dark,
        primarySwatch:MyColors.navy,
        scaffoldBackgroundColor:const Color(0xfffcfcfc),
        appBarTheme:const AppBarTheme(
          backgroundColor:Colors.white,
          elevation:.2,
            titleTextStyle:  TextStyle( color: Color(0xff323232)),
            iconTheme: IconThemeData(color: MyColors.primaryColor)
        )
      ),
      home:WelcomeScreen()
    );
  }
}


