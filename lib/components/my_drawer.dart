import 'package:flutter/material.dart';
import 'package:mealdeal/components/my_drawer_tile.dart';
import 'package:mealdeal/services/auth/auth_service.dart';

import '../pages/settings_page.dart';
import '../pages/login_page.dart'; // Ensure you import the login page

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  Future<void> logout(BuildContext context) async {
    final authService = AuthService();
    try {
      await authService.signOut(); // Await the sign-out operation
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                const LoginPage()), // Navigate to login page after logout
      );
    } catch (e) {
      // Handle any errors that occur during sign out
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Logout failed: ${e.toString()}'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.fastfood,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          MyDrawerTile(
            text: "HOME",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          MyDrawerTile(
            text: "SETTINGS",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),
          const Spacer(),
          MyDrawerTile(
            text: "LOG OUT",
            icon: Icons.logout,
            onTap: () => logout(context), // Call the logout function
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
