import 'package:flutter/material.dart';
import 'package:food_pandas_food_delivery_app_with_backend/components/my_drawer_title.dart';
import 'package:food_pandas_food_delivery_app_with_backend/pages/settings_page.dart';
import 'package:food_pandas_food_delivery_app_with_backend/services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  void logout() {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // app logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.restaurant,
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

          // home list title
          MyDrawerTitle(
            text: "Home",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),

          // settings list title
          MyDrawerTitle(
            text: "Settings",
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

          // logout list item
          MyDrawerTitle(
            text: "Logout",
            icon: Icons.logout,
            onTap: () {
              logout();
              Navigator.pop(context);
            }
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
