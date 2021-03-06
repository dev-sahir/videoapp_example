import 'package:flutter/material.dart';
import 'package:video_app/widgets/build_card.dart';
import 'package:video_app/widgets/build_container.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A1D37),
      appBar: AppBar(
        elevation: 10.0,
        shadowColor: Colors.white24,
        brightness: Brightness.dark,
        backgroundColor: Color(0xff0A1D37),
        title: Text(
          "Video Play",
          style: TextStyle(
            fontSize: 20.0,
            letterSpacing: 4,
            color: Colors.white,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 13.0),
          child: Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.all(6),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.contain, image: AssetImage("images/logo.png"))),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Text(
              "My Favourites",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                BuildContainer(
                  title: "Mutu...",
                  thumb: "images/mutu.png",
                  videoUrl: "images/motu.mp4",
                ),
                SizedBox(width: 20),
                BuildContainer(
                  title: "Rudra...",
                  thumb: "images/Rudra.png",
                  videoUrl: "images/Rudra.mp4",
                ),
                SizedBox(width: 20),
                BuildContainer(
                  title: "Super Birthday...",
                  thumb: "images/SuperBirthday.png",
                  videoUrl: "images/SuperBirthday.mp4",
                ),
                SizedBox(width: 20),
                BuildContainer(
                  title: "Looney_Tunes...",
                  thumb: "images/Looney_Tunes.png",
                  videoUrl: "images/Looney_Tunes.mp4",
                ),
                SizedBox(width: 20),
                BuildContainer(
                  title: "Tom_and_Jerry...",
                  thumb: "images/Tom_and_Jerry.png",
                  videoUrl: "images/Tom_and_Jerry.mp4",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Text(
              "My Videos",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
          BuildCard(
            title: "Music_App...",
            thumb: "images/Music_App.png",
            videoUrl: "images/Music_App.mp4",
            title2: "Part-_2...",
            thumb2: "images/Part-_2.png",
            videoUrl2: 'images/Part-_2.mp4',
          ),
          BuildCard(
            title: "Frontend...",
            thumb: "images/FrontendBackend.png",
            videoUrl: 'images/FrontendBackend.mp4',
            title2: "Part-_3..",
            thumb2: "images/Part-_3.png",
            videoUrl2: "images/Part-_3.mp4",
          ),
          BuildCard(
            title: "Upload...",
            thumb: "images/UploadToGitHub.png",
            videoUrl: "images/UploadToGitHub.mp4",
            title2: "Generic_",
            thumb2: "images/Generic_.png",
            videoUrl2: 'images/Generic_.mp4',
          ),
          BuildCard(
            title: "GridView..",
            thumb: "images/GridView_Builde.png",
            videoUrl: "images/GridView_Builde.mp4",
            title2: "Music_App",
            thumb2: "images/Music_App.png",
            videoUrl2: 'Music_App.mp4',
          ),
        ],
      ),
    );
  }
}
