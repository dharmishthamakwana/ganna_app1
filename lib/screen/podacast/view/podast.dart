import 'dart:async';

import 'package:flutter/material.dart';

class FlasScreen extends StatefulWidget {
  const FlasScreen({Key? key}) : super(key: key);

  @override
  State<FlasScreen> createState() => _FlasScreenState();
}

class _FlasScreenState extends State<FlasScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(
        seconds: 3,
      ),
      () {
        Navigator.pushReplacementNamed(context, 'Base');
      },
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "aseets/playlist/Gaana.png",
                width: 200,
                height: 200,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Music  .",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "podcast  .",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Ganna Live",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
