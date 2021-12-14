import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/constants.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  bool _switchValue = true;
  double _value = 28;

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
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: kSpotifyBlackColorDarker,
          selectedItemColor: kSpotifyGreenColor,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                backgroundColor: kSpotifyGreenColor),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.headset),
              title: Text('My Musics'),
            ),
          ],
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
                  padding: EdgeInsets.fromLTRB(10, 40, 20, 10),
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
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Text(
                    'BY SPOTIFY - 379.458 FOLLOWERS',
                    style: TextStyle(fontSize: 9.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 7.0,
                        height: 7.0,
                        child: FloatingActionButton.small(
                          onPressed: () {},
                          backgroundColor: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Container(
                        width: 7.0,
                        height: 7.0,
                        child: FloatingActionButton.small(
                          onPressed: () {},
                          backgroundColor: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40.0,
                  width: 145.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: kSpotifyGreenColor,
                  ),
                  child: Center(
                    child: Text('SHUFFLE PLAY'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 10, 5, 0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('Download'),
                      ),
                      Transform.scale(
                        scale: 0.6,
                        child: Expanded(
                          child: CupertinoSwitch(
                            value: _switchValue,
                            onChanged: (value) {
                              setState(() {
                                _switchValue = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Slider(
                  activeColor: kSpotifyGreenColor,
                  inactiveColor: Colors.grey,
                  min: 1,
                  max: 100,
                  value: _value,
                  onChanged: (value) {
                    setState(
                      () {
                        _value = value;
                      },
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 20,
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      Icon(
                        Icons.pause,
                        size: 40,
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
