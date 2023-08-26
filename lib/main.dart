import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_twod_myanmar/appStart/navgationbar.dart';
import 'package:flutter_twod_myanmar/core/localization/lang/my_MM.dart';
import 'package:flutter_twod_myanmar/di.dart';
import 'package:flutter_twod_myanmar/screen/home.dart';
import 'package:flutter_twod_myanmar/utils/constants.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  configure();
  runApp(MyApp()
      // MultiProvider(providers: [
      //  ChangeNotifierProvider(create:(_)=>LocaleProvider() )
      //])
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // locale: context.watch<LocaleProvider>().locale,
      theme: ThemeData(primarySwatch: Colors.grey,
       fontFamily: 'Poppins'
       ),
      // localizationsDelegates: [
      //   AppLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: [
      //   Locale('en'),
      //   Locale('my'),
      // ],
      home: const FlashScreen(),
    );
  }
}

class FlashScreen extends StatefulWidget {
  const FlashScreen({super.key});

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(NavScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            CustomColor.black,
            CustomColor.blue,
            Colors.blue

            // CustomColor.pink1,
            // Colors.grey
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)
              //color: CustomColor.darkGreen
              ),
          child: Center(
              child: Image.asset(
            "assets/icons/2d4.png",
            scale: 8,
          ))),
    );
  }
}
