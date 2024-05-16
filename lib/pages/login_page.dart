import 'package:flutter/material.dart';
import 'package:food_pandas_food_delivery_app_with_backend/components/my_button.dart';
import 'package:food_pandas_food_delivery_app_with_backend/components/my_textfield.dart';

import 'home_page.dart';
// import 'package:fooddelivtute/components/my_textfield.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passworcontroller = TextEditingController();

  // login method
  void login() {
    /*
     fill out authentication here...
     */
    // Nevigate to home page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.restaurant,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),

            // message, app slogon
            Text(
              "B A R C O D E",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(
              height: 25,
            ),
            // email text field
            MyTextField(
              controller: emailcontroller,
              hintText: "Email",
              obscureText: false,
            ),

            const SizedBox(
              height: 10,
            ),
            // password textfiled
            MyTextField(
              controller: passworcontroller,
              hintText: "Password",
              obscureText: true,
            ),

            const SizedBox(
              height: 25,
            ),
            //sign in button
            myButton(text: "Sign in", onTap: login),

            const SizedBox(
              height: 25,
            ),
            //not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    " Register now",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
