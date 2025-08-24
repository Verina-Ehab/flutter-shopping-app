import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/constants/sizes.dart';
import 'core/dependency_injection.dart';
import 'core/localization/app_localizations.dart';
import 'core/routing/app_router.dart';
import 'core/routing/navigation_service.dart';
import 'core/routing/routes.dart';
import 'core/themes/theme.dart';
import 'features/settings/cubit/settings_cubit.dart';

class ShopCraftApp extends StatelessWidget {
  final AppRouter appRouter;
  const ShopCraftApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SettingsCubit>(
          create: (context) => getIt<SettingsCubit>()..getSavedLanguage(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: designSize,
        minTextAdapt: true,
        child: BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, state) {
            return MaterialApp(
              navigatorKey: NavigationService.navigatorKey,
              locale: state.locale, // locale from the SettingsState
              supportedLocales: const [Locale('en'), Locale('ar')],
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              localeResolutionCallback: (deviceLocale, supportedLocales) {
                for (var locale in supportedLocales) {
                  if (deviceLocale != null &&
                      deviceLocale.languageCode == locale.languageCode) {
                    return deviceLocale;
                  }
                }
                return supportedLocales.first;
              },
              debugShowCheckedModeBanner: false,
              title: 'Shop Craft',
              // themeMode: ThemeMode.system,
              theme: AppThemeManager.lightTheme,
              // darkTheme: AppThemeManager.darkTheme,
              onGenerateRoute: appRouter.generateRoute,
              initialRoute: Routes.startScreen,
            );
          },
        ),
      ),
    );
  }
}
