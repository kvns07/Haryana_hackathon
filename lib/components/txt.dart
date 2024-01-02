import 'package:flutter/material.dart';
class Txt extends StatelessWidget {

  const Txt({required String this.s});
  final String s;
  @override
  Widget build(BuildContext context) {
    return Text(
      s,
      style: TextStyle(fontSize: 15.5,color: Colors.white),
    );
  }
}
