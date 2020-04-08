import 'package:flutter/material.dart';

class ButtonwithText extends StatefulWidget {
  final page, text;
  const ButtonwithText({
    Key key,
    this.page,
    this.text,
  }) : super(key: key);

  @override
  _ButtonwithTextState createState() => _ButtonwithTextState();
}

class _ButtonwithTextState extends State<ButtonwithText> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget.page),
        );
      },
      child: Text(
        widget.text,
      ),
    );
  }
}
