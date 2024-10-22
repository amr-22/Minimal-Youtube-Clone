import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:minimal_youtube_clone/Feature/Home_screen/data/repository/video_list_repo.dart';
import 'package:minimal_youtube_clone/Feature/Home_screen/data/web_service/video_list_webservice.dart';
import 'package:minimal_youtube_clone/youtube_clone.dart';

Future<void> main() async {
    // // dynamic dio = Dio();
    // dynamic webService = VideoListWebservice( createAndSetupDio());
    // dynamic myRepo = VideoListRepo(webService);
    // dynamic users = await myRepo.getAllVideos();
  runApp(const YoutubeClone());
}


Dio createAndSetupDio() {
  Dio dio = Dio();
  // dio.options.headers['X-Auth-Token'] = 'bb63408014824d05ae15ece3143de40f';
  dio
    ..options.connectTimeout = Duration(seconds: 2)
    ..options.receiveTimeout = Duration(seconds: 2);

  dio.interceptors.add(LogInterceptor(
    responseBody: false,
    error: true,
    requestHeader: false,
    responseHeader: false,
    request: true,
    requestBody: true,
  ));

  return dio;
}