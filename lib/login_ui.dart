import 'package:flutter/material.dart';

class LoginUi extends StatelessWidget {
  const LoginUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView( 
          padding: const EdgeInsets.all(24.0), 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            crossAxisAlignment: CrossAxisAlignment.stretch, 
            children: [
              // Title
              const Text(
                'Welcome Back!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 40), 

              // Username Text Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Enter your username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: const Icon(Icons.person),
                  filled: true,
                  fillColor: const Color(0x0D673AB7),
                ),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 20), 
              // Password Text Field
              TextField(
                obscureText: true, // Hide password
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: const Icon(Icons.visibility_off),
                  filled: true,
                  fillColor: const Color(0x0D673AB7),
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
              const SizedBox(height: 30),

              // Login Button
              ElevatedButton(
                onPressed: () {
                  print('Login button pressed!');
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: Colors.deepPurple, 
                  foregroundColor: Colors.white, 
                  elevation: 2,
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20), 

              // Forgot Password
              TextButton(
                onPressed: () {
                  print('Forgot Password?');
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.deepPurple),
                ),
              ),
              TextButton(
                onPressed: () {
                  print('Create an Account');
                },
                child: const Text(
                  'Don\'t have an account? Sign Up',
                  style: TextStyle(color: Colors.deepPurple),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
