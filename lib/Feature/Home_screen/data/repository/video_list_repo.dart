import '../web_service/video_list_webservice.dart';
import '../model/video_list.dart';

class VideoListRepo {
  final VideoListWebservice videoListWebservice;
  VideoListRepo(this.videoListWebservice);

  Future<VideosList> getAllVideos() async {
    // print("1");
    var response= await videoListWebservice.getAllVideos(
      "snippet",
      "mostPopular",
      "EG",
      "50",
      "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    );
    // print(response.items);
    return response;
  }

}