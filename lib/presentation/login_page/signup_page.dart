import 'package:flutter/material.dart';
import 'package:pet_care/api_functions/api_functions.dart';
import 'package:pet_care/model/signup_model.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  RegisterWidgetState createState() => RegisterWidgetState();
}

class RegisterWidgetState extends State<RegisterWidget> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  void _register() async {
    if (_passwordController.text == _confirmPasswordController.text) {
      final register = Register(
        email: _emailController.text,
        password: _passwordController.text,
        name: _fullNameController.text,
        phoneNumber: _phoneController.text,
      );

      bool success = await Api.postSignup(register.toJson());

      if (!mounted) return;

      if (success) {
        // Handle successful signup, e.g., navigate to another page
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Registration successful')),
        );
      } else {
        // Handle signup failure
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Registration failed')),
        );
      }
    } else {
      // Handle password mismatch
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Passwords do not match')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 40),
                const Text(
                  'Full Name',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 8),
                _buildTextField(_fullNameController),
                const SizedBox(height: 24),
                const Text(
                  'Email ID',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 8),
                _buildTextField(_emailController),
                const SizedBox(height: 24),
                const Text(
                  'Phone Number',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 8),
                _buildTextField(_phoneController),
                const SizedBox(height: 24),
                const Text(
                  'Password',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 8),
                _buildTextField(_passwordController, obscureText: true),
                const SizedBox(height: 24),
                const Text(
                  'Confirm Password',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 8),
                _buildTextField(_confirmPasswordController, obscureText: true),
                const SizedBox(height: 40),
                Center(
                  child: ElevatedButton(
                    onPressed: _register,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      minimumSize: const Size(200, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, {bool obscureText = false}) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Color.fromRGBO(242, 242, 242, 1),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        ),
      ),
    );
  }
}
