import 'package:flutter/material.dart';
import 'package:flutteruichallenges/src/pages/login/loginpage1.dart';
import 'package:flutteruichallenges/src/pages//login/loginpage2.dart';
import 'package:flutteruichallenges/src/pages/login/loginpage3.dart';
import 'package:flutteruichallenges/src/pages/single_product/single_product_page1.dart';
import 'package:flutteruichallenges/src/pages/single_product/single_product_page2.dart';
import 'package:flutteruichallenges/src/widgets/buttonWithText.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
                      buildSingleProductPageListTile(),
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
          fontSize: 20,
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
          ButtonwithText(
            page: LoginPage3(),
            text: 'Login Page 3',
          ),
        ],
      ),
    );
  }

  ListTile buildSingleProductPageListTile() {
    return ListTile(
      title: Text(
        'E-commerce Single Product Page',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ButtonwithText(
            page: SingleProductPage1(),
            text: 'Single Product Page 1',
          ),
          ButtonwithText(
            page: SingleProductPage2(),
            text: 'Single Product Page 2',
          ),
        ],
      ),
    );
  }
}
