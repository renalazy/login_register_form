import 'package:flutter/material.dart';
import 'package:login_form/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFFB415B),
      ),
      home: LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.only(top: 100.0, right: 20.0, left: 20.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('images/logo.png'),
            ),
            SizedBox(height: 40.0),
            Text(
              'LOGIN',
              style: TextStyle(
                  fontFamily: 'Khillua',
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFBB040)),
            ),
            SizedBox(height: 40.0),
            buildTextField('Email'),
            SizedBox(height: 20.0),
            buildTextField('Password'),
            SizedBox(height: 20.0),
            Container(
              child: Row(
                children: <Widget>[
                  Text(
                    'Forgotten Password?',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 50.0),
            buildButtonContainer(),
            SizedBox(height: 30.0),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Dont have account?',
                    ),
                    SizedBox(width: 10.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpForm()));
                      },
                      child: Text(
                        'SIGN UP',
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
          prefixIcon:
              hintText == 'Email' ? Icon(Icons.email) : Icon(Icons.lock),
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
          'LOGIN',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
