import 'package:flutter/material.dart';
import 'package:ioasys_pokedex/Pages/pokemon_page.dart';
import 'package:ioasys_pokedex/models/pokemon_info_model.dart';
import 'Pages/pokedex_home_page.dart';
import 'Pages/splash_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0XFFEC0344),
          ),
          fontFamily: 'Poppins'),
      // home: const PokedexHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/pokedex_page': (context) => PokedexHomePage(),
      },
    );
  }
}
