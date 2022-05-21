import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key, this.width, this.height, this.radius})
      : super(key: key);
  final width;
  final height;
  final radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          shape: BoxShape.rectangle,
          color: Colors.white.withOpacity(0.9)),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: //Icon(Icons.chat_outlined,size: 100,),
            Image(
                image: AssetImage('images/secure-authentication (1)_0.webp'),
                fit: BoxFit.fitWidth),
      ),
    );
  }
}
