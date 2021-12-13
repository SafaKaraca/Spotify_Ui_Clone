import 'package:flutter/cupertino.dart';
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
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kSpotifyGreenColor,
          title: kAppbarText,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.deepPurple, kSpotifyBlackColor],
                stops: [0.0, 0.85]),
          ),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 100, 20, 10),
                  child: Image.asset(
                    'lib/assets/images/mozart.jpg',
                    scale: 2.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Text(
                    'This is Mozart',
                    style: kHeaderTextStyle,
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Follow',
                    style: TextStyle(fontSize: 12.0),
                  ),
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)),
                      primary: Colors.white,
                      backgroundColor: Colors.transparent,
                      side: BorderSide(
                        width: 0.9,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
