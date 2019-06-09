import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

void main() => runApp(MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
      title: "Flare Animations",
    ));

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((_) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          child: FlareActor("assets/Gears.flr", animation: "spin1"),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "Flutter + Flare",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
          Container(
            width: 100,
            height: 100,
            child: FlareActor(
              "assets/Heart.flr",
              animation: "pulse",
            ),
          ),
        ],
      ),
    );
  }
}
