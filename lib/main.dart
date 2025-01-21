import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c13/style/PrefsHelper.dart';
import 'package:islami_c13/ui/home/screen/home_screen.dart';
import 'package:islami_c13/ui/splash/screen/splash_screen.dart';
import 'package:islami_c13/ui/sura_details/screen/suradetails_screen.dart';

import 'ui/splash/screen/OBoarding_Screen.dart';

 main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  await PrefHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        SplashScreen.routeName:(_)=>SplashScreen(),
        HomeScreen.routeName:(_)=>HomeScreen(),
        SuraDetailsScreen.routeName:(_)=>SuraDetailsScreen(),
        OnBoarding.routeName:(_)=>OnBoarding()
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}

