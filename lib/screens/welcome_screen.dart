import 'package:cooking_app/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:iconify_flutter_plus/icons/lucide.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 4),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  HomePage()), 
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/main_image.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Iconify(
                Lucide.chef_hat,
                size: 90,
                color: Colors.white,
              ).animate().slide(duration: 1.5.seconds, curve: Curves.easeInOut),
              const Text(
                'Chef Mate',
                style: TextStyle(
                    fontSize: 74, color: Colors.white, fontFamily: 'Jomhuria'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
