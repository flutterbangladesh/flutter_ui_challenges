import 'package:flutter/material.dart';
import 'package:flutteruichallenges/animations/fadeAnimation.dart';

class LoginPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color primary = Color(0xFFFF9797);
    final Color secondary = Color(0xFF8400FF);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/bg.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      secondary.withOpacity(0.2),
                      primary.withOpacity(.8),
                    ],
                    stops: [
                      0.0,
                      1.0,
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                  top: height * .2,
                ),
                child: Column(
                  children: <Widget>[
                    FadeAnimation(
                      1,
                      Container(
                        child: Text(
                          'FASHION',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 2.0,
                            fontSize: 35,
                            shadows: [
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 5.0,
                                color: primary,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * .1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: width * .1,
                        right: width * .1,
                      ),
                      child: FadeAnimation(
                        3,
                        Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: primary,
                                  ),
                                ),
                              ),
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1,
                                ),
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'you@example.com',
                                  hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(.8),
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: primary,
                                  ),
                                ),
                              ),
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1,
                                ),
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '••••••••••••',
                                  hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(.8),
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * .02,
                            ),
                            Container(
                              width: double.infinity,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                color: primary.withOpacity(.8),
                                onPressed: () {},
                                child: Text(
                                  'LOGIN',
                                  style: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 2.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            FlatButton(
                              padding: EdgeInsets.all(0),
                              onPressed: () {},
                              child: Text(
                                'Forgot password?',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: height * .1,
                            ),
                            FadeAnimation(
                              5,
                              Column(
                                children: <Widget>[
                                  Text(
                                    'or',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * .05,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: FlatButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      color: secondary.withOpacity(.5),
                                      onPressed: () {},
                                      child: Text(
                                        'SIGN UP',
                                        style: TextStyle(
                                          color: Colors.white,
                                          letterSpacing: 2.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
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
}
