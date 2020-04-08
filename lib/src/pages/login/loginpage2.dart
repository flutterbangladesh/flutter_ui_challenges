import 'package:flutter/material.dart';

class LoginPage2 extends StatefulWidget {
  @override
  _LoginPage2State createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    final Color primary = Color(0xFF425C5A);
    final Color secondary = Color(0xFFFCCDA3);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: primary,
        ),
        child: Padding(
          padding: EdgeInsets.only(top: height * .25),
          child: Column(
            children: <Widget>[
              Text(
                'WELCOME BACK!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  fontSize: 30,
                  color: secondary,
                ),
              ),
              SizedBox(height: height * .1),
              Padding(
                padding: EdgeInsets.only(left: width * .1, right: width * .1),
                child: Container(
                  child: ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: secondary,
                          ),
                          bottom: BorderSide(
                            color: secondary,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.only(
                        right: width * .03,
                        left: width * .03,
                        bottom: height * .01,
                        top: height * .01,
                      ),
                      child: Icon(
                        Icons.email,
                        color: secondary,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(0),
                    title: Container(
                      
                      child: TextField(
                        cursorColor: secondary,
                        style: TextStyle(
                          color: secondary,
                          letterSpacing: 1,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'you@example.com',
                          hintStyle: TextStyle(
                            color: secondary.withOpacity(.5),
                            letterSpacing: 1,
                          ),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: secondary.withOpacity(.8),
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width * .1, right: width * .1),
                child: Container(
                  child: ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: secondary,
                          ),
                          bottom: BorderSide(
                            color: secondary,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.only(
                        right: width * .03,
                        left: width * .03,
                        bottom: height * .01,
                        top: height * .01,
                      ),
                      child: Icon(
                        Icons.security,
                        color: secondary,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(0),
                    title: Container(
                      
                      child: TextField(
                        cursorColor: secondary,
                        style: TextStyle(
                          color: secondary,
                          letterSpacing: 1,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: !_visible,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '••••••••••',
                          hintStyle: TextStyle(
                            color: secondary.withOpacity(.5),
                            letterSpacing: 1,
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: secondary.withOpacity(.8),
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                    trailing: Container(
                      child: IconButton(
                          icon: Icon(
                            _visible ? Icons.visibility : Icons.visibility_off,
                            color: secondary,
                          ),
                          onPressed: () {
                            setState(() {
                              _visible = !_visible;
                            });
                          }),
                    ),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: secondary.withOpacity(.6),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: width * .1,
                ),
                width: double.infinity,
                child: FlatButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: secondary,
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: primary,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * .05,
              ),
              Row(
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
                        color: secondary,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
