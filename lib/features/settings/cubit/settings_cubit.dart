import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/common_widgets/snackbar.dart';

import '../../../core/localization/language_cache_helper.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  final LanguageCacheHelper languageCacheHelper = LanguageCacheHelper();
  SettingsCubit() : super(SettingsState(locale: const Locale('en')));

  Future<void> getSavedLanguage() async {
    try {
      final String cachedLanguageCode = await languageCacheHelper
          .getCachedLanguageCode();
      emit(SettingsState(locale: Locale(cachedLanguageCode)));
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> changeLanguage(String languageCode, BuildContext context) async {
    try {
      await languageCacheHelper.cacheLanguageCode(languageCode);
      emit(SettingsState(locale: Locale(languageCode)));
    } catch (e) {
      if (context.mounted) {
        customSnackBar(isError: true, message: e.toString(), context: context);
      }
    }
  }
}
