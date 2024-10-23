import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:minimal_youtube_clone/Feature/Home_screen/data/model/video_list.dart';
part 'video_list_webservice.g.dart';

@RestApi(baseUrl: "https://youtube.googleapis.com/youtube/v3/")


abstract class VideoListWebservice {
  factory VideoListWebservice(Dio dio, {String baseUrl}) =
      _VideoListWebservice;


  @GET("videos")
  Future<VideosList> getAllVideos  (
   @Query("part") String part, // e.g., "snippet"
    @Query("chart") String chart, // e.g., "mostPopular"
    @Query("regionCode") String regionCode, // e.g., "US"
    @Query("maxResults") String maxResults,
    @Query("key") String apiKey, // Your API key
  );

}