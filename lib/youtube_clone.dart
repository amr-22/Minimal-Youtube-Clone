import 'package:flutter/material.dart';
import 'package:minimal_youtube_clone/Feature/Home_screen/home_screen.dart';

class YoutubeClone extends StatelessWidget {
  const YoutubeClone({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}