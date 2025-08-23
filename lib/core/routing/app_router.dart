import 'package:flutter/material.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/localization/app_localizations.dart';
import 'package:flutter_sprints_microsoft_shopcraft/features/auth/auth_screen.dart';

import '../../features/settings/presentation/screens/settings_screen.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const Placeholder());

      case Routes.startScreen:
        return MaterialPageRoute(
          builder: (_) =>
              // BlocProvider.value(
              //   value: getIt<SkeletonCubit>(),
              //   child:
              const AuthScreen(),
          // ),
        );

      case Routes.settingsScreen:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());

      default:
        return null;
    }
  }

  MaterialPageRoute<dynamic> errorRoute({String? msg}) {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        body: Center(child: Text(msg ?? "somethingWentWrong".tr(context))),
      ),
    );
  }
}
