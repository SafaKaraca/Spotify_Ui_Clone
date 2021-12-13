import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/constants.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kSpotifyGreenColor,
          title: kAppbarText,
        ),
        body: Container(
          child: Center(),
        ),
      ),
    );
  }
}
