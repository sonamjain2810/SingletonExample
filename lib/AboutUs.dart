
import "package:flutter/material.dart";

// Ye video dekh ke mene flutter custom icons and svg icons rakhna sikha
// https://www.youtube.com/watch?v=qZYqmM3daO0
class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {


  var aboutUsString =
      "Hello, My name is Rikhil Jain and I'm the man behind this app.\n\tIf you have any suggestions or feedback feel free to message me. I will reply to everyone. Do drop me a hello.\nIt really means a lot to me.\nLooking forward to hear from you.";
  var fbPageURL = "https://www.facebook.com/gj1studio/";
  var twitterURL = "https://twitter.com/GJOneStudio";
  var instagramURL = "https://www.instagram.com/gjonestudio/";
  var youtubeURL = "https://www.youtube.com/GJOneStudioLanguageTutors/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About Developer",
          style: Theme.of(context).appBarTheme.toolbarTextStyle,
        ),
      ),
      body: const SafeArea(
        child: Text("About Us"),
      ),
    );
  }
}
