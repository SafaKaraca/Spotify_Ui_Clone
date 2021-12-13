import 'package:flutter/material.dart';

const kSpotifyGreenColor = Color(0xFF1DB954);
const kSpotifyBlackColor = Color(0xFF191414);

const kAppbarText = Text(
  'Spotify Clone',
  style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    shadows: [
      Shadow(
        offset: Offset(1, 2.0),
        blurRadius: 10.0,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    ],
  ),
);
