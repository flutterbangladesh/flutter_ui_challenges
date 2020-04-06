import 'package:flutter/material.dart';
import 'package:flutteruichallenges/src/pages/loginpage1.dart';
import 'package:flutteruichallenges/src/pages/loginpage2.dart';
import 'package:flutteruichallenges/src/widgets/buttonWithText.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter UI Challenges'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.only(
                    left: width * .05,
                    top: 16,
                    right: width * .05,
                  ),
                  child: Column(
                    children: <Widget>[
                      buildLoginPageListTile(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ListTile buildLoginPageListTile() {
    return ListTile(
      title: Text(
        'Login Pages',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ButtonwithText(
            page: LoginPage1(),
            text: 'Login Page 1',
          ),
          ButtonwithText(
            page: LoginPage2(),
            text: 'Login Page 2',
          ),
        ],
      ),
    );
  }
}
