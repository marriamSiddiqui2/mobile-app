import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_button.dart';
import 'text_fileld_email.dart';
import 'registration_page.dart';
import 'welcome.dart';
import "data.dart";
import 'admin_home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo (Icon)
            Icon(
              Icons.lock_open_rounded,
              size: 90,
              color: Colors.black,
            ),

            const SizedBox(height: 30),

            // App title
            Text(
              'THIS IS MARRIAMS FOOD DELIVRY APP',
              style: TextStyle(
                fontSize: 25,
                color: const Color.fromARGB(255, 182, 45, 207),
              ),
            ),

            const SizedBox(height: 10),

            // Email TextField
            MyTextField(
              controller: emailController,
              hintText: 'EMAIL',
              obscureText: false,
            ),
            const SizedBox(height: 10),

            // Password TextField
            MyTextField(
              controller: passwordController,
              hintText: 'Enter password',
              obscureText: true,
            ),
            const SizedBox(height: 10),

            // Sign-In Button with login logic
            MyButton(
              text: 'SIGN IN',
              onTap: () async {
                if (emailController.text.isEmpty || passwordController.text.isEmpty) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Error'),
                      content: Text('Please enter both username and password'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('OK'),
                        ),
                      ],
                    ),
                  );
                  return;
                }

                final authService = AuthService();

                try {
                  final tokens = await authService.login(
                    emailController.text.trim(),
                    passwordController.text.trim(),
                  );

                  print('Login Successful! Tokens: $tokens');

                  if (tokens['is_admin'] == true) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const AdminHome()),
                    );
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Welcome()),
                    );
                  }
                } catch (e) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Login Error'),
                      content: Text('Invalid username or password'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('OK'),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),

            const SizedBox(height: 10),

            // Registration redirection text
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login2()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("If you are not registered ->"),
                  Text(
                    " register here ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Welcome()),
              ),
              child: Text('Click to go to the home page'),
            ),
          ],
        ),
      ),
    );
  }
}
