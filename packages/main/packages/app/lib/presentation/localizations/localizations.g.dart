// GENERATED FILE. DO NOT MODIFY.
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

part 'ru.g.dart';
part 'en.g.dart';

abstract final class AppLocalizationData {
  String get collectionTitle;
  String get brandingTitle;
  String get bookmarksTitle;
  String get settingsTitle;
  String get inDevelopment;
  String get search;
  String get projectsTitle;
  String get studiosTitle;
  String get themesTitle;
  String projectsCounter(String count);
  String get studio;
  String get theme;
  String get media;
  String get pallete;
  String get style;
  String get fonts;

  Map<String, String> get map;
}

final class AppLocalizations {
  static const _AppLocalizationsDelegate delegate =
      _AppLocalizationsDelegate();

  static AppLocalizationData of(BuildContext context) {
    return Localizations.of<AppLocalizationData>(
      context,
      AppLocalizationData,
    )!;
  }

  static const List<Locale> supportedLocales = [Locale('ru'), Locale('en')];

  static const List<LocalizationsDelegate> localizationsDelegates = [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];
}

final class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizationData> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      AppLocalizations.supportedLocales.contains(locale);

  @override
  Future<AppLocalizationData> load(Locale locale) async {
    switch (locale.languageCode) {
      case 'ru':
        return const RuAppLocalizationData();
      case 'en':
        return const EnAppLocalizationData();
      default:
        return const RuAppLocalizationData();
    }
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

extension AppLocalizationsExtension on BuildContext {
  AppLocalizationData get appLocalizations =>
      AppLocalizations.of(this);
}

