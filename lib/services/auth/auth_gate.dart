import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_pandas_food_delivery_app_with_backend/pages/home_page.dart';
import 'package:food_pandas_food_delivery_app_with_backend/services/auth/login_or_register.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(), builder: (context, snapshot){
        // user is login
        if(snapshot.hasData){
          return const HomePage();
        }


        // user is not login
        else{
          return const LoginOrRegister();
        }
      }),
    );
  }
}