import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations({required this.locale});

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  late Map<String, String> _localizedStrings;

  Future<void> loadJsonLanguage() async {
    try {
      String jsonString = await rootBundle
          .loadString("assets/lang/${locale.languageCode}.json");
      Map<String, dynamic> jsonMap = json.decode(jsonString);
      _localizedStrings =
          jsonMap.map((key, value) => MapEntry(key, value.toString()));
    } catch (e) {
      log('Error loading localization file: $e');
      _localizedStrings = {}; // Provide an empty map as fallback
    }
  }

  String translate(String key) => _localizedStrings[key] ?? key;
  // Return the key if translation is missing
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'ar'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations localizations = AppLocalizations(locale: locale);
    await localizations.loadJsonLanguage();
    return localizations;
  }

  @override
  bool shouldReload(covariant _AppLocalizationsDelegate old) => false;
}

extension TranslateX on String {
  String tr(BuildContext context) {
    return AppLocalizations.of(context)?.translate(this) ??
        this; // Return the original string if localizations are missing
  }
}
