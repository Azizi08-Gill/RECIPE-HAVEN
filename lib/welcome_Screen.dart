import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: const Color(0xFFEBEFF5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 330,
              height: 330,
              child: Image.asset(
                'assets/welcome.png', // Replace with your image asset path
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 40),
            Text(
              'RECIPE HAVEN',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Here You can Explore new recipes\nand can create your own recipes\nwe will make it for you',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
                height: 1.5,
              ),
            ),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2FA67A),
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 24, horizontal: 150),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text('Login'),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: const Color(0xFF2FA67A)),
                padding: EdgeInsets.symmetric(vertical: 24, horizontal: 120),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Create Account',
                style: TextStyle(color: const Color(0xFF2FA67A)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
