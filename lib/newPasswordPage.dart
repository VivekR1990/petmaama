import 'package:flutter/material.dart';
import 'package:pet_care/design%20v2/loginpage.dart';


class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  _NewPasswordPageState createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  void _validateAndSubmit() {
    if (_formKey.currentState!.validate()) {
      print('New password set: ${_newPasswordController.text}');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    }
  }

  @override
  void dispose() {
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 26, bottom: 35),
                child: Text(
                  'PetCare',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              const Row(
                children: [
                  Text(
                    'New Password',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  SizedBox(height: 100.0),
                  Text(
                    "Set your new password",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _newPasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'New Password',
                        labelStyle: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a new password';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters long';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      controller: _confirmPasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Confirm New Password',
                        labelStyle: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please confirm your new password';
                        }
                        if (value != _newPasswordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Text(
                        'Reset Password',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: _validateAndSubmit,
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.purple,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 50,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}