import 'package:flutter/material.dart';

void main() => runApp(Signup());

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFFB415B),
      ),
      home: SignUpForm(),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.only(top: 100.0, bottom: 20.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sign Up',
              style: TextStyle(
                  fontFamily: 'Khillua',
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFBB040)),
            ),
            SizedBox(height: 40.0),
            buildTextField('Name'),
            SizedBox(height: 20.0),
            buildTextField('Email'),
            SizedBox(height: 20.0),
            buildTextField('Phone Number'),
            SizedBox(height: 20.0),
            buildTextField('Password'),
            SizedBox(height: 20.0),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Checkbox(
                      value: true,
                      checkColor: Color(0xFFFBB040),
                    ),
                    Text('I Accept'),
                    SizedBox(width: 5.0),
                    Text(
                      'Terms and Condition, Privacy Policy.',
                      style: TextStyle(
                        color: Color(0xFFFBB040),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40.0),
            buildButtonContainer(),
            SizedBox(height: 40.0),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Already have an account?'),
                    SizedBox(width: 10.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Color(0xFFFBB040),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String hintText) {
    return TextField(
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          prefixIcon: hintText == 'Email'
              ? Icon(Icons.email)
              : hintText == 'Phone Number'
                  ? Icon(Icons.phone)
                  : hintText == 'Name' ? Icon(Icons.person) : Icon(Icons.lock),
          suffixIcon: hintText == 'Password'
              ? IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility_off),
                )
              : Container()),
    );
  }

  Widget buildButtonContainer() {
    return Container(
      height: 56.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.0),
        gradient: LinearGradient(
          colors: [Color(0xFFFBB040), Color(0xFFEE5623)],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
      ),
      child: Center(
        child: Text(
          'SIGNUP',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
