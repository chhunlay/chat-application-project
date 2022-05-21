import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

import 'screens/login/hello.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: Hello(),
      theme: CupertinoThemeData(
          brightness: Brightness.light,
          primaryColor: Color.fromARGB(255, 240, 101, 14)),
    );
  }
}
