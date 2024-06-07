import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ott/login.dart';


class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => log()),
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
             color: Colors.white
            ),
            child: Center(
              child: Image(
                image: NetworkImage('https://static.vecteezy.com/system/resources/previews/019/614/399/non_2x/amazon-logo-amazon-icon-free-free-vector.jpg'),
              ),
            ),
           ),
       );
    }
}