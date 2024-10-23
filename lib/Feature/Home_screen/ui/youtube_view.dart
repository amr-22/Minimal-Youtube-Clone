import 'package:flutter/material.dart';
import 'package:minimal_youtube_clone/Feature/Home_screen/data/repository/video_list_repo.dart';
import 'package:minimal_youtube_clone/Feature/Home_screen/data/web_service/video_list_webservice.dart';
import 'package:minimal_youtube_clone/Feature/Video_player_screen/ui/video_screen.dart';
import 'package:minimal_youtube_clone/main.dart';
import '../data/model/video_list.dart';

class YoutubeView extends StatefulWidget {
  const YoutubeView({super.key});

  @override
  State<YoutubeView> createState() => _YoutubeViewState();
}

class _YoutubeViewState extends State<YoutubeView> {
  VideosList? videosData;
  Future<void> fetchListOfVideo() async {
    dynamic webService = VideoListWebservice(createAndSetupDio());
    dynamic myRepo = VideoListRepo(webService);
    videosData = await myRepo.getAllVideos();
  }

  @override
  void initState() {
    super.initState();
    fetchListOfVideo();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: fetchListOfVideo().whenComplete(() {}),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: ListView.builder(
                    itemCount: videosData?.items.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VideoScreen(
                                      videoId: videosData!.items[index].id,
                                    )),
                          );
                        },
                        child: SizedBox(
                          width: double.infinity,
                          height: 320,
                          child: Column(
                            children: [
                              Image.network(
                                videosData!
                                    .items[index].snippet.thumbnails.high!.url
                                    .toString(),
                                width: 320,
                              ),
                              Flexible(
                                child: Text(
                                    videosData!.items[index].snippet.title
                                        .toString(),
                                    maxLines: 2,
                                    style: const TextStyle(fontSize: 18),
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ],
                          ),
                        ),
                      );
                    }));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
