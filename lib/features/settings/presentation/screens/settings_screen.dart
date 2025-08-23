import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/localization/app_localizations.dart';
import '../../cubit/settings_cubit.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SettingsCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'settings'.tr(context),
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          // Build the UI based on the state
          return Stack(
            // Use Stack to overlay loading indicator
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 20.0,
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text('language'.tr(context)),
                      trailing: DropdownButton<String>(
                        value:
                            state.locale.languageCode, // Get locale from state
                        items: [
                          DropdownMenuItem(
                            value: 'en',
                            child: Text('english'.tr(context)),
                          ),
                          DropdownMenuItem(
                            value: 'ar',
                            child: Text('arabic'.tr(context)),
                          ),
                        ],
                        onChanged: (value) {
                          if (value != null) {
                            // Call cubit method directly
                            cubit.changeLanguage(value, context);
                          }
                        },
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
