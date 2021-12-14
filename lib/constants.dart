import 'package:flutter/material.dart';

const kSpotifyGreenColor = Color(0xFF1DB954);
const kSpotifyBlackColor = Color(0xFF191414);
const kSpotifyBlackColorDarker = Color(0xFF190404);

const item1 = Text('Rolling In The Deep - Adele');
const item2 = Text('Rolling In The Deep - Adele');

const kAppbarText = Text(
  'SPOTIFY UI CLONE',
  style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    shadows: [
      Shadow(
        offset: Offset(1, 2.0),
        blurRadius: 10.0,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    ],
  ),
);

const kHeaderTextStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
