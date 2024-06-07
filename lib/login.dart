import 'package:flutter/material.dart';
import 'package:ott/watching.dart';

class log extends StatefulWidget {
  const log({Key? key}) : super(key: key);

  @override
  _logState createState() => _logState();
}

class _logState extends State<log> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              height: 150,
            ),
            Center(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/prime2.jpg')
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter the email",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the email';
                  }
                  if (!isValidEmail(value)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              child: TextFormField(
                controller: pass,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter the password",
                ),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the password';
                  }
                  if (!isValidPassword(value)) {
                    return 'Password must contain only numbers';
                  }
                  return null;
                },
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: TextButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => watching()),
                    );
                  }
                },
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Forgot password?',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool isValidEmail(String email) {
    final emailRegex = RegExp(r'^[a-zA-Z0-9]+@[a-zA-Z]+\.[a-zA-Z]+$');
    return emailRegex.hasMatch(email);
  }

  bool isValidPassword(String password) {
    final passRegex = RegExp(r'^[0-9]+$');
    return passRegex.hasMatch(password);
  }
}
