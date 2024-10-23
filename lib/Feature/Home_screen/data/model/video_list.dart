import 'package:json_annotation/json_annotation.dart';

part 'video_list.g.dart';

@JsonSerializable()
class VideosList {
    String kind;
    String etag;
    List<Item> items;

    VideosList({
        required this.kind,
        required this.etag,
        required this.items,
    });

      factory VideosList.fromJson(Map<String, dynamic> json)  =>
      _$VideosListFromJson(json);


  Map<String, dynamic> toJson() => _$VideosListToJson(this);

}
@JsonSerializable()
class Item {
    String kind;
    String etag;
    String id;
    Snippet snippet;

    Item({
        required this.kind,
        required this.etag,
        required this.id,
        required this.snippet,
    });

          factory Item.fromJson(Map<String, dynamic> json) =>
      _$ItemFromJson(json);


  Map<String, dynamic> toJson() => _$ItemToJson(this);



}
@JsonSerializable()
class Snippet {
    String channelId;
    String title;
    String description;
    Thumbnails thumbnails;



    Snippet({
        required this.channelId,
        required this.title,
        required this.description,
        required this.thumbnails,

    });

          factory Snippet.fromJson(Map<String, dynamic> json) =>
      _$SnippetFromJson(json);


  Map<String, dynamic> toJson() => _$SnippetToJson(this);



}

@JsonSerializable()
class Thumbnails {
    Default? thumbnailsDefault;
    Default? medium;
    Default? high;
    Default? standard;
    Default? maxres;

    Thumbnails({
        required this.thumbnailsDefault,
        required this.medium,
        required this.high,
        required this.standard,
        required this.maxres,
    });

          factory Thumbnails.fromJson(json) => _$ThumbnailsFromJson(json) ;


  Map<String, dynamic> toJson() => _$ThumbnailsToJson(this);



}
@JsonSerializable()
class Default {
    String url;
    int width;
    int height;

    Default({
        required this.url,
        required this.width,
        required this.height,
    });

          factory Default.fromJson(Map<String, dynamic>  json)  => _$DefaultFromJson(json);


  Map<String, dynamic> toJson() => _$DefaultToJson(this);



}
