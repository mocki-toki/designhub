import 'package:shared/domain.dart';

final class DailyLink {
  DailyLink({
    required this.id,
    required this.title,
    required this.url,
    required this.previewImageUrl,
    required this.type,
    required this.date,
  });

  final UuidValue id;
  final String title;
  final Uri url;
  final Uri? previewImageUrl;
  final DailyLinkType type;
  final Date date;

  Map<String, dynamic> toJson() {
    return {
      'id': '$id',
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

  static DailyLink fromJson(Map<String, dynamic> json) {
    var previewImageUrl = json['preview_image_url'] as String?;
    if (previewImageUrl != null && previewImageUrl.isEmpty) {
      previewImageUrl = null;
    }
    return DailyLink(
      id: UuidValue.fromString(json['id'] as String),
      title: json['title'] as String,
      url: Uri.parse(json['url'] as String),
      previewImageUrl:
          previewImageUrl == null ? null : Uri.tryParse(previewImageUrl),
      type: DailyLinkType.values.byName(json['type'] as String),
      date: Date(DateTime.parse(json['date'] as String)),
    );
  }

  DailyLink copyWith({
    UuidValue? id,
    String? title,
    Uri? url,
    Uri? previewImageUrl,
    DailyLinkType? type,
    Date? date,
  }) {
    return DailyLink(
      id: id ?? this.id,
      title: title ?? this.title,
      url: url ?? this.url,
      previewImageUrl: previewImageUrl ?? this.previewImageUrl,
      type: type ?? this.type,
      date: date ?? this.date,
    );
  }

  @override
  operator ==(Object other) {
    return other is DailyLink &&
        other.id == id &&
        other.title == title &&
        other.url == url &&
        other.previewImageUrl == previewImageUrl &&
        other.type == type &&
        other.date == date;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        url.hashCode ^
        previewImageUrl.hashCode ^
        type.hashCode ^
        date.hashCode;
  }
}

enum DailyLinkType {
  video,
  startup,
  utility,
  site,
  article,
  cases,
}
