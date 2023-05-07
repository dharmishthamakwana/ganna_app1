import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../home/view/home_screen.dart';
import '../provider/bottam_provider.dart';

class Basescreen extends StatefulWidget {
  const Basescreen({Key? key}) : super(key: key);

  @override
  State<Basescreen> createState() => _BasescreenState();
}

class _BasescreenState extends State<Basescreen> {
  Baseprovider? baseproviderTrue;
  Baseprovider? baseproviderFalse;

  @override
  Widget build(BuildContext context) {
    baseproviderTrue = Provider.of<Baseprovider>(context, listen: true);
    baseproviderFalse = Provider.of<Baseprovider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Homescreen(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          currentIndex: baseproviderTrue!.navigationIndex,
          onTap: (value) {
            baseproviderFalse!.onNavigationTap(value);
            print("${baseproviderTrue!.navigationIndex}");
          },
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home_outlined,color: Colors.grey),
                ),
                label: "Home",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search,color: Colors.grey),
                ),
                label: "Search",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.podcasts_outlined,color: Colors.grey),
                ),
                label: "Podcast",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.my_library_music,color: Colors.grey),
                ),
                label: "My Library",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.person_outline,color: Colors.grey),
                ),
                label: "Profile",
                backgroundColor: Colors.black),
          ],
        ),
      ),
    );
  }
}
