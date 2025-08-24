import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/constants/colors.dart';

import '../../../../core/localization/app_localizations.dart';
import '../../cubit/settings_cubit.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SettingsCubit>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'settings'.tr(context),
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        iconTheme: IconThemeData(color: ColorsManager.grey),
      ),
      body: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 20.0,
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'language'.tr(context),
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: DropdownButton<String>(
                        dropdownColor: Colors.white,
                        value: state.locale.languageCode,
                        items: [
                          DropdownMenuItem(
                            value: 'en',
                            child: Text(
                              'english'.tr(context),
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'ar',
                            child: Text(
                              'arabic'.tr(context),
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          if (value != null) {
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
