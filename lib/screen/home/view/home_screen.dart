import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../../utils/image/playlist/playlist.dart';
import '../../../utils/image/singer/singerimg.dart';
import '../../music/provider/music_provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hey Makwana !",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 20,
                                letterSpacing: 1),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5)),
                            alignment: Alignment.center,
                            child: Text("SUBSCRIBE >",
                                style: TextStyle(color: Colors.white)),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(Icons.settings_suggest_sharp,
                              color: Colors.white, size: 25),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "g+",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 11,
                            ),
                          ),
                          Text(
                            "FREE USER . ",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            "Ad-free premimum experience at just\nRs.299",
                            style: TextStyle(
                              color: Colors.grey.shade300,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "New Releases",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Spacer(),
                    Text("view all", style: TextStyle(color: Colors.grey)),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),

              Container(
                height: 180,
                child: ListView.builder(
                  itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'playlist');
                      },
                      child: songBox(playlistImg[index], playlistName[index])),
                  itemCount: playlistImg.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Charts",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text("view all", style: TextStyle(color: Colors.grey)),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 160,
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'playlist');
                        },
                       child:  songBox(playlistImg2[index], playlistName2[index])),
                    itemCount: playlistImg2.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                  )),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    "aseets/playlist/images.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Artists For You",
                            style: GoogleFonts.poppins(color: Colors.white)),
                        Text("Artists based on your interest",
                            style: GoogleFonts.poppins(
                                color: Colors.grey, fontSize: 10)),
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      "View all",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 120,
                child: ListView.builder(
                  itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Provider.of<Musicprovider>(context, listen: false)
                            .initAudio(index);
                        Navigator.pushNamed(context, 'open', arguments: index);
                      },
                      child: singerBox(singerImg[index], singerName[index])),
                  itemCount: singerImg.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Podcast Top Charts",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text(
                      "view all",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_right_rounded,color: Colors.red,)
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 160,
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                        songBox(playlistImg3[index], playlistName3[index]),
                    itemCount: playlistImg3.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget singerBox(String singerImg, String singerName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(5),
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                "${singerImg}",
                fit: BoxFit.cover,
              )),
        ),
        Text("${singerName}",
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 11,
            )),
      ],
    );
  }

  Widget songBox(String playlistImg, String playlistName) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          height: 120,
          width: 110,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "${playlistImg}",
                fit: BoxFit.cover,
              )),
        ),
        Text("${playlistName}",
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 11,
            )),
      ],
    );
  }
}
