import 'package:flutter/services.dart';

import 'pages/screens.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MeetMe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        primaryColor: primaryColor,
        fontFamily: 'NunitoSans',
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: blackColor),
        ),
      ),
      home: const Splash(),
    );
  }
}
