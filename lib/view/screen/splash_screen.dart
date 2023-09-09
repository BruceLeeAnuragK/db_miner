import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:db_miner/view/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Get Into the Depth of Words",
              style: GoogleFonts.greatVibes(
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Text(
              "And Change Your Life",
              style: GoogleFonts.greatVibes(
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            //Great Vibes, Dancing Script, Sofia, Pacifico, Meow Script,
          ],
        ),
      ),
      nextScreen: HomePage(),
      duration: 4000,
    );
  }
}
