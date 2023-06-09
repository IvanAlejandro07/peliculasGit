import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:peliculas/screens/details_screen.dart';
import 'package:peliculas/screens/home_screen.dart';
import 'package:peliculas/theme/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AppState());
}


class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => MoviesProvider(), lazy: false,)
    ],
    child: MyApp(),
    );
  }
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      theme: AppTheme.lightTheme,
      initialRoute: 'home',
      routes: {
        'home': ((context) => const HomeScreen()),
        'details': ((context) => const DetailsScreen())
      },
    );
  }
}
