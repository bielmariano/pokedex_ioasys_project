import 'package:flutter/material.dart';
import 'package:ioasys_pokedex/Pages/pokedex_home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PokedexHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFEC0344),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 250, 0, 0),
          child: Column(
            children: [
              Image.asset('assets/images/ioasys_logo.png'),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Ioasys Pokédex',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,),
              ),
              const SizedBox(height: 40,),
              const SizedBox( height: 60, width: 60, child: CircularProgressIndicator(color: Colors.white,))
            ],
          ),
        ),
      ),
    );
  }
}
