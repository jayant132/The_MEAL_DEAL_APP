import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mealdeal/components/my_button.dart';
import 'package:mealdeal/components/my_textfield.dart';
import 'package:mealdeal/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  final void Function()? ontap;
  const LoginPage({super.key, this.ontap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // Key for form validation

  // Show a loading dialog or progress indicator
  void _showLoadingDialog() {
    showDialog(
      context: context,
      barrierDismissible:
          false, // Prevents dialog from being dismissed by tapping outside
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  void _hideLoadingDialog() {
    Navigator.of(context).pop(); // Hides the loading dialog
  }

  void login() async {
    if (_formKey.currentState?.validate() ?? false) {
      _showLoadingDialog();
      final authService = AuthService();
      try {
        await authService.signInWithEmailPassword(
          emailController.text,
          passwordController.text,
        );
        _hideLoadingDialog();
        // Navigate to the next page or show success message
      } catch (e) {
        _hideLoadingDialog();
        String errorMessage;
        if (e is FirebaseAuthException) {
          switch (e.code) {
            case 'user-not-found':
              errorMessage = 'No user found for that email.';
              break;
            case 'wrong-password':
              errorMessage = 'Incorrect password.';
              break;
            default:
              errorMessage = 'An unknown error occurred. Please try again.';
          }
        } else {
          errorMessage = 'An error occurred: ${e.toString()}';
        }
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(errorMessage),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Dismiss the dialog
                },
                child: Text('OK'),
              ),
            ],
          ),
        );
      }
    }
  }

  void forgotPw() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text("Please Re-enter your password"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.fastfood,
                  size: 100,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                const SizedBox(height: 25),
                Text(
                  "THE MEAL DEAL",
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(height: 25),
                MyTextfield(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an email';
                    }
                    // Add more email validation if needed
                    return null;
                  },
                ),
                const SizedBox(height: 25),
                MyTextfield(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 25),
                MyButton(
                  text: "Sign In",
                  ontap: login,
                ),
                const SizedBox(height: 25),
                TextButton(
                  onPressed: forgotPw,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a Member?",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.ontap,
                      child: Text(
                        "Register Now",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
