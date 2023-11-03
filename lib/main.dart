import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:uts_mobile/layouts/LoginScreen.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate an API call delay (you can replace this with your actual API call)
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Your custom image from 'assets' folder
            Image(
              image: AssetImage('assets/images/images.jpeg'),
              width: 100.0,
              height: 100.0,
            ),
            SizedBox(height: 20),
            // Progress indicator (using flutter_spinkit)
            SpinKitRing(
              color: Colors.blue, // Change the loading indicator color
              size: 20.0, // Adjust the size as needed
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(), // Start with SplashScreen
    );
  }
}
