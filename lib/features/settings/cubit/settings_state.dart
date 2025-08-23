part of 'settings_cubit.dart';

class SettingsState {
  final Locale locale;

  SettingsState({
    required this.locale,
  });

  // Add copyWith for easier state updates
  SettingsState copyWith({
    Locale? locale,
  }) {
    return SettingsState(
      locale: locale ?? this.locale,
    );
  }
}
