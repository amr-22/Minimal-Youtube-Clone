import 'package:flutter/material.dart';
import 'package:minimal_youtube_clone/Feature/Home_screen/ui/youtube_view.dart';

class HomeScreen extends StatelessWidget {
  
  HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/youtube.png",width: 100,),
        actions: const [
          Icon(Icons.cast,),
          SizedBox(width: 15,),
        Icon(Icons.add_alert_outlined),
        SizedBox(width: 15,),
          Icon(Icons.search,),
          SizedBox(width: 20,),
        ],
        ),
        body: YoutubeView(),
    );
  }
}