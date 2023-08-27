import 'package:app_zone/Splash/splashscreen.dart';
import 'package:app_zone/favorites/favorite_controller/favorite_controller.dart';
import 'package:app_zone/helpers/sp_helper.dart';
import 'package:app_zone/special_offers/controller/special_offers_controller.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SPHelper.spHelper.initSharedPreferences();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => MyFavoriteController()),
    ChangeNotifierProvider(create: (_) => SpecialOffersController()),

  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  SplashScreen()
    );
  }
}

class NavigationWorkSpase extends StatefulWidget {
  const NavigationWorkSpase({super.key});

  @override
  State<NavigationWorkSpase> createState() => _NavigationWorkSpaseState();
}

class _NavigationWorkSpaseState extends State<NavigationWorkSpase> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    );
  }
}