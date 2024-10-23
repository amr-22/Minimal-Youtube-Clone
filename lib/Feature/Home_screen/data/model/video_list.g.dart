// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideosList _$VideosListFromJson(Map<String, dynamic> json) => VideosList(
      kind: json['kind'] as String,
      etag: json['etag'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VideosListToJson(VideosList instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'items': instance.items,
    };

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      kind: json['kind'] as String,
      etag: json['etag'] as String,
      id: json['id'] as String,
      snippet: Snippet.fromJson(json['snippet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'id': instance.id,
      'snippet': instance.snippet,
    };

Snippet _$SnippetFromJson(Map<String, dynamic> json) => Snippet(
      channelId: json['channelId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      thumbnails: Thumbnails.fromJson(json['thumbnails']),
    );

Map<String, dynamic> _$SnippetToJson(Snippet instance) => <String, dynamic>{
      'channelId': instance.channelId,
      'title': instance.title,
      'description': instance.description,
      'thumbnails': instance.thumbnails,
    };

Thumbnails _$ThumbnailsFromJson(Map<String, dynamic> json) => Thumbnails(
      thumbnailsDefault: json['thumbnailsDefault'] == null
          ? null
          : Default.fromJson(json['thumbnailsDefault'] as Map<String, dynamic>),
      medium: json['medium'] == null
          ? null
          : Default.fromJson(json['medium'] as Map<String, dynamic>),
      high: json['high'] == null
          ? null
          : Default.fromJson(json['high'] as Map<String, dynamic>),
      standard: json['standard'] == null
          ? null
          : Default.fromJson(json['standard'] as Map<String, dynamic>),
      maxres: json['maxres'] == null
          ? null
          : Default.fromJson(json['maxres'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ThumbnailsToJson(Thumbnails instance) =>
    <String, dynamic>{
      'thumbnailsDefault': instance.thumbnailsDefault,
      'medium': instance.medium,
      'high': instance.high,
      'standard': instance.standard,
      'maxres': instance.maxres,
    };

Default _$DefaultFromJson(Map<String, dynamic> json) => Default(
      url: json['url'] as String,
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
    );

Map<String, dynamic> _$DefaultToJson(Default instance) => <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };
