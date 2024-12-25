import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F9FF), // Light background
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            // Top Image
            Center(
              child: Image.asset(
                'assets/signup.png', // Replace with your signup image asset
                height: 300,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 24),
            // Form Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      // First Name
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter First Name',
                            labelText: 'First Name',
                            labelStyle: TextStyle(color: Colors.grey[700]),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Color(0xFF2FA67A)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      // Last Name
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Last Name',
                            labelText: 'Last Name',
                            labelStyle: TextStyle(color: Colors.grey[700]),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Color(0xFF2FA67A)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Email
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Your Email',
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.grey[700]),
                      prefixIcon:
                          const Icon(Icons.email, color: Color(0xFF2FA67A)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xFF2FA67A)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Password
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.grey[700]),
                      prefixIcon:
                          const Icon(Icons.lock, color: Color(0xFF2FA67A)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xFF2FA67A)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Confirm Password
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(color: Colors.grey[700]),
                      prefixIcon:
                          const Icon(Icons.lock, color: Color(0xFF2FA67A)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xFF2FA67A)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Terms & Conditions
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                        activeColor: const Color(0xFF2FA67A),
                      ),
                      const Flexible(
                        child: Text(
                          'I Agree with the Terms & Conditions.',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Sign Up Button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF2FA67A), // Updated color
                      foregroundColor: Colors.white,
                      padding:
                          EdgeInsets.symmetric(vertical: 14, horizontal: 160),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text('Sign Up',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 20),
                  // OR Divider
                  Center(
                    child: Text(
                      'OR SIGN IN WITH',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Google and Facebook Buttons
                  Column(
                    children: [
                      // Google Button
                      ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(
                              vertical: 24, horizontal: 110),
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
                      const SizedBox(height: 12),
                      // Facebook Button
                      ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color(0xFF3b5998), // Facebook blue color
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                              vertical: 24, horizontal: 100),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
