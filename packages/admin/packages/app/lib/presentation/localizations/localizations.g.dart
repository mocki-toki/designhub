// GENERATED FILE. DO NOT MODIFY.
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

part 'ru.g.dart';
part 'en.g.dart';

abstract final class AppLocalizationData {
  String get invalidCredentialsFailure;
  String welcomeMessage(String name);
  String get dateAlreadyExistsError;
  String get createDialog;
  String get confirmDialog;
  String get deleteDialog;
  String get cancelDialog;
  String get deleteDateMessage;
  String get createLinkTitle;
  String get changeLinkTitle;
  String get linkUrlHint;
  String get changeTypeTitle;
  String get newDateButton;
  String get createLinkButton;
  String get uploadFileButton;
  String get deleteDateButton;
  String get saveChangesButton;
  String get discardChangesButton;
  String get noDatesMessage;
  String get changeImageTitle;

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

