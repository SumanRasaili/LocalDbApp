import 'package:firestoreapp/components/custom_textfield.dart';
import 'package:firestoreapp/screens/home_screen.dart';
import 'package:firestoreapp/utils/colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Login Screen",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 150),
        child: Column(
          children: [
            CustomTextField(
              titleColor: AppColors.labelTextColor,
              textInputAction: TextInputAction.newline,
              borderRadius: 10.0,
              controller: emailController,
              hintText: "Enter your email here...",
              labelText: "Email",
              isNewLabel: true,
              isRequired: true,
              hintStyle:
                  const TextStyle(fontSize: 14, color: AppColors.hintTextColor),
              maxLines: 1,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              titleColor: AppColors.labelTextColor,
              textInputAction: TextInputAction.newline,
              borderRadius: 10.0,
              controller: passwordController,
              hintText: "Enter your password here...",
              labelText: "Password",
              isNewLabel: true,
              isRequired: true,
              hintStyle:
                  const TextStyle(fontSize: 14, color: AppColors.hintTextColor),
              maxLines: 1,
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
                height: 45,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                    },
                    child: const Text("Log In")))
          ],
        ),
      ),
    );
  }
}
