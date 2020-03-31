import 'package:flutter/material.dart';


/**
 * Author: Flutter Bangladesh
 * profile: https://github.com/orgs/flutterbangladesh/people
 */
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FlatButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.white,
            color: Colors.blue,
            child:Text("Hello "),
            onPressed:(){
              print('HI');
            }, ),
        ),
      ),
    );
  }


}


