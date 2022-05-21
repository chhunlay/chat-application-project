import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key, this.onPressed}) : super(key: key);
  final onPressed;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 0, 0, 0)),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 15),
          child: Text("Terms and conditions",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.7))),
        ),
      ),
    );
  }
}
