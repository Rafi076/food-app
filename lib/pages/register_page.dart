import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passworcontroller = TextEditingController();
  final TextEditingController confirmPassworcontroller =
      TextEditingController();

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
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),

            // message, app slogon
            Text(
              "Create account",
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

            // confirm password txt field
            const SizedBox(
              height: 10,
            ),
            // password textfiled
            MyTextField(
              controller: confirmPassworcontroller,
              hintText: "Confirm Password",
              obscureText: true,
            ),

            const SizedBox(
              height: 25,
            ),
            //sign up button
            myButton(text: "Sign Up", onTap: () {}),

            const SizedBox(
              height: 25,
            ),

            //Already have an account? login here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    " login now",
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
