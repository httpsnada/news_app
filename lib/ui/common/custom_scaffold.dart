import 'package:flutter/material.dart';
import 'package:news/ui/design/design.dart';
import 'package:news/ui/provider/theme_provider.dart';
import 'package:news/ui/screens/home_screen.dart';
import 'package:provider/provider.dart';

class CustomScaffold extends StatelessWidget {
  final String title;
  final Widget child;

  const CustomScaffold({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    var appTheme = Theme.of(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search_sharp))],
      ),

      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: AppColors.light),
              child: Center(
                child: Text(
                  "News App",
                  style: appTheme.textTheme.titleLarge?.copyWith(
                    color: AppColors.dark,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              },
              child: ListTile(
                title: Text("Go To Home"),
                leading: Icon(Icons.home_filled),
              ),
            ),

            Divider(),

            GestureDetector(
              onTap: () {
                themeProvider.setThemeMode = themeProvider.isDarkTheme
                    ? ThemeMode.light
                    : ThemeMode.dark;
              },
              child: ListTile(
                title: Text(themeProvider.isDarkTheme ? "Dark" : "Light"),
                leading: Icon(
                  themeProvider.isDarkTheme
                      ? Icons.nightlight_round
                      : Icons.sunny,
                ),
              ),
            ),

            Divider(),
          ],
        ),
      ),

      body: child,
    );
  }
}
