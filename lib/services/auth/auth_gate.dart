import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mealdeal/pages/home_page.dart';
import 'package:mealdeal/services/auth/login_or_register.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // Check for loading state
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          // Check for errors
          if (snapshot.hasError) {
            return const Center(
              child: Text('Something went wrong. Please try again.'),
            );
          }
          // Check if user is logged in
          if (snapshot.hasData) {
            return const HomePage();
          }
          // User is not logged in
          return const LoginOrRegister();
        },
      ),
    );
  }
}
