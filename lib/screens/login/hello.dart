import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/blur_image_page_scaffold.dart';
import '../../components/lets_start.dart';
import '../../components/terms_and_conditions.dart';
import 'edit_number.dart';

class Hello extends StatelessWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlurImagePageScaffold(
      imagePath: 'images/chhunlay-02.jpg',
      body: [
        Icon(Icons.message_outlined,
            size: 170.0, color: Color.fromARGB(255, 255, 94, 0)),
        //Image(image: AssetImage('images/logos.png',),),
        // Logo(height: 100.0, width: 150.0, radius: 100.0),
        Text("The Chhun",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                fontSize: 60)),
        Column(
          children: [
            Text("Welcome to my chat application",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                    fontSize: 20)),
            Text("mobile messaging with friends",
                style: TextStyle(
                    color: Color.fromARGB(255, 19, 12, 12).withOpacity(0.7),
                    fontSize: 20)),
            Text("all over the world",
                style: TextStyle(
                    color: Color.fromARGB(255, 7, 2, 2).withOpacity(0.7),
                    fontSize: 20))
          ],
        ),
        TermsAndConditions(onPressed: () {}),
        LetsStart(onPressed: () {
          Navigator.push(
              context, CupertinoPageRoute(builder: (context) => EditNumber()));
        })
      ],
    );
  }
}
