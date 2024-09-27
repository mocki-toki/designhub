import 'package:shared/domain.dart';

class DailyLinkModel {
  DailyLinkModel({
    required this.title,
    required this.url,
    required this.previewImageUrl,
    required this.type,
    required this.date,
  });

  factory DailyLinkModel.fromResponse(DailyLink response) {
    return DailyLinkModel(
      title: response.title,
      url: response.url,
      previewImageUrl: response.previewImageUrl,
      type: response.type,
      date: response.date,
    );
  }

  final String title;
  final Uri url;
  final Uri? previewImageUrl;
  final DailyLinkType type;
  final Date date;

  DailyLinkModel copyWith({
    String? title,
    Uri? url,
    Uri? previewImageUrl,
    DailyLinkType? type,
    Date? date,
  }) {
    return DailyLinkModel(
      title: title ?? this.title,
      url: url ?? this.url,
      previewImageUrl: previewImageUrl ?? this.previewImageUrl,
      type: type ?? this.type,
      date: date ?? this.date,
    );
  }
}
