import 'package:flutter/material.dart';

class LoginPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color primary = Color(0xFFFC79A5);
    final Color secondary = Colors.grey;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(
          top: height * .15,
          left: width * .05,
          right: width * .05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Welcome,',
              style: TextStyle(
                color: primary,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Text(
              'Sign in to continue!',
              style: TextStyle(
                color: secondary,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: height * .1,
            ),
            Theme(
              data: ThemeData(
                primaryColor: primary,
              ),
              child: Column(
                children: <Widget>[
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: secondary,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: secondary,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: secondary,
                      ),
                      hintText: 'you@email.com',
                      hintStyle: TextStyle(
                        color: secondary,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * .01,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: secondary,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: secondary,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: secondary,
                      ),
                      hintText: '•••••••••',
                      hintStyle: TextStyle(
                        color: secondary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: () {},
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: secondary,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: LinearGradient(
                  begin: FractionalOffset.centerLeft,
                  end: FractionalOffset.centerRight,
                  colors: [
                    primary,
                    Color(0xFFFF7F50).withOpacity(.5),
                  ],
                  stops: [
                    0.5,
                    1.0,
                  ],
                ),
              ),
              child: FlatButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * .3),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Not a member?',
                    style: TextStyle(
                      color: secondary.withOpacity(.6),
                    ),
                  ),
                  FlatButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {},
                    child: Text(
                      'Join Now',
                      style: TextStyle(
                        color: primary,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
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
