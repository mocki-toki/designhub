import 'package:shared/domain.dart';

final class DailyLinkRequest extends DailyLinkModel {
  DailyLinkRequest({
    required super.title,
    required super.url,
    required super.previewImageUrl,
    required super.type,
    required super.date,
  });

  factory DailyLinkRequest.fromResponse(DailyLink response) {
    return DailyLinkRequest(
      title: response.title,
      url: response.url,
      previewImageUrl: response.previewImageUrl,
      type: response.type,
      date: response.date,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'url': '$url',
      'preview_image_url':
          previewImageUrl == null || previewImageUrl?.host == null
              ? null
              : '$previewImageUrl',
      'type': type.name,
      'date': date.dateTime.toIso8601String(),
    };
  }

  static DailyLinkRequest fromJson(Map<String, dynamic> json) {
    var previewImageUrl = json['preview_image_url'] as String?;
    if (previewImageUrl != null && previewImageUrl.isEmpty) {
      previewImageUrl = null;
    }
    return DailyLinkRequest(
      title: json['title'] as String,
      url: Uri.parse(json['url'] as String),
      previewImageUrl:
          previewImageUrl == null ? null : Uri.tryParse(previewImageUrl),
      type: DailyLinkType.values.byName(json['type'] as String),
      date: Date(DateTime.parse(json['date'] as String)),
    );
  }

  DailyLinkRequest copyWith({
    String? title,
    Uri? url,
    Uri? previewImageUrl,
    DailyLinkType? type,
    Date? date,
  }) {
    return DailyLinkRequest(
      title: title ?? this.title,
      url: url ?? this.url,
      previewImageUrl: previewImageUrl ?? this.previewImageUrl,
      type: type ?? this.type,
      date: date ?? this.date,
    );
  }
}
