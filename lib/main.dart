import 'package:flutter/material.dart';
import 'package:food_pandas_food_delivery_app_with_backend/auth/login_or_register.dart';
import 'package:food_pandas_food_delivery_app_with_backend/models/restaurant.dart';
import 'package:food_pandas_food_delivery_app_with_backend/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized;
  runApp(MultiProvider(
    providers: [
      //theme provider..
      ChangeNotifierProvider(create: (context) => Themeprovider()),

      //resturant provider
      ChangeNotifierProvider(create: (context) => Restaurant()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<Themeprovider>(context).themeData,
    );
  }
}
