import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: const Color(
              0xFFEBEFF5), // Light background color from Welcome Screen
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Add the top image
            Image.asset(
              'assets/login.png',
              height: 330,
              width: 330,
            ),
            const SizedBox(height: 25),
            // Email Input Field
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.grey[700]),
                prefixIcon: Icon(Icons.email,
                    color: Color(0xFF2FA67A)), // Updated color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: Color(0xFF2FA67A)), // Updated color
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            // Password Input Field
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.grey[700]),
                prefixIcon:
                    Icon(Icons.lock, color: Color(0xFF2FA67A)), // Updated color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: Color(0xFF2FA67A)), // Updated color
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 12),
            // Remember Me and Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                      activeColor: Color(0xFF2FA67A), // Updated color
                    ),
                    Text('Remember me',
                        style: TextStyle(color: Colors.grey[700])),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Color(0xFF2FA67A)), // Updated color
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Login Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF2FA67A), // Updated color
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 24, horizontal: 160),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text('Login',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 20),
            // Divider with OR
            Row(
              children: [
                Expanded(child: Divider(color: Colors.grey[400])),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'OR',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
                Expanded(child: Divider(color: Colors.grey[400])),
              ],
            ),
            const SizedBox(height: 20),
            // Sign in with Google Button
            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 24, horizontal: 110),
                side: BorderSide(color: Colors.grey[400]!),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              icon: Image.asset(
                'assets/google-logo.png', // Replace with your Google icon asset
                height: 20,
              ),
              label: Text('Sign in with Google'),
            ),
            const SizedBox(height: 20),
            // Sign in with Facebook Button
            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3b5998), // Facebook blue color
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 24, horizontal: 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              icon: Icon(
                Icons.facebook,
                size: 20,
                color: Colors.white,
              ),
              label: Text('Sign in with Facebook'),
            ),
          ],
        ),
      ),
    );
  }
}
