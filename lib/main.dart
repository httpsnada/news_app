import 'package:flutter/material.dart';
import 'package:news/ui/design/theme.dart';
import 'package:news/ui/provider/theme_provider.dart';
import 'package:news/ui/screens/home_screen.dart';
import 'package:news/ui/screens/news_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'News',
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        NewsScreen.routeName: (_) => NewsScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
      },
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.getThemeMode,
    );
  }
}
