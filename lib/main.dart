import 'package:flutter/material.dart';
import 'package:ganna_app/screen/home/view/home_screen.dart';
import 'package:ganna_app/screen/music/provider/music_provider.dart';
import 'package:ganna_app/screen/openScreen/view/open_screen.dart';
import 'package:ganna_app/screen/playlist/provider/playlistProvider.dart';
import 'package:ganna_app/screen/playlist/view/playlistScreen.dart';
import 'package:ganna_app/screen/podacast/view/podast.dart';
import 'package:ganna_app/screen/tabbar/provider/bottam_provider.dart';
import 'package:ganna_app/screen/tabbar/view/bottam_navigation_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Baseprovider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Musicprovider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Playlistprovider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
       initialRoute: 'home',
        routes: {
          '/': (context) => Basescreen(),
          'home': (context) => Homescreen(),
          'open': (context) => Openscreen(),
          'playlist': (context) => Playlistscreen(),
        },
      ),
    ),
  );
}
