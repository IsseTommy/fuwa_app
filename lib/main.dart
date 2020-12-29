import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FuwaSound',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 248, 0, 1),
      body: SafeArea(
        child: Center(
          child: RaisedButton(
            onPressed: () async {
              AssetsAudioPlayer player = AssetsAudioPlayer.newPlayer();
              await player.open(
                Audio("assets/fuwa.mp3"),
              );
              await player.play();
            },
            child: Image.asset(
              "assets/harami.png",
              width: width * 0.9,
            ),
            color: Color.fromRGBO(249, 248, 0, 1),
            elevation: 0.0,
          ),
        ),
      ),
    );
  }
}
