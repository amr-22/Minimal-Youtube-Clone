import 'package:flutter/material.dart';

class YoutubeView extends StatefulWidget {
  const YoutubeView({super.key});

  @override
  State<YoutubeView> createState() => _YoutubeViewState();
}

class _YoutubeViewState extends State<YoutubeView> {

    final List items = ["1", "2", "3", "4","5","6","7","8","9","10","11", "12", "13", "14","15","16","17","18","19"];

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
    return ListTile(
      title: Image.network("https://i.ytimg.com/vi/Qer3lwd5hyA/hqdefault.jpg"),
    );
  },);
  }
}