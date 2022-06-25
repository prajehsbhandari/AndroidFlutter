import 'package:flutter/material.dart';

import '../model/user.dart';
import '../repository/user_repository.dart';
import '../utils/show_message.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  _registerUser(User user) async {
    bool isSignup = await UserRepository().registerUser(user);
    if (isSignup) {
      _displayMessage(true);
    } else {
      _displayMessage(false);
    }
  }

  _displayMessage(bool isSignup) {
    if (isSignup) {
      displaySuccessMessage(context, "Register Success");
      _emailController.clear();
      _passwordController.clear();
      _usernameController.clear();
    } else {
      displayErrorMessage(context, 'Register Failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                      'Create New',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Account',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/login');
                      },
                      child: const Text(
                        'Already Registered? Log in here',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Name',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    TextFormField(
                      controller: _usernameController,
                      decoration:
                          const InputDecoration(border: OutlineInputBorder()),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Name';
                        }

                        return null;
                      },
                    ),
                    const SizedBox(height: 8),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Email',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration:
                          const InputDecoration(border: OutlineInputBorder()),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Email';
                        }

                        return null;
                      },
                    ),
                    const SizedBox(height: 8),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Password',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      controller: _passwordController,
                      decoration:
                          const InputDecoration(border: OutlineInputBorder()),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter password';
                        }

                        return null;
                      },
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrange),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            User user = User(
                              email: _emailController.text,
                              username: _usernameController.text,
                              password: _passwordController.text,
                            );
                            _registerUser(user);
                          } else {
                            return;
                          }
                        },
                        child: const Text('Sign Up'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
