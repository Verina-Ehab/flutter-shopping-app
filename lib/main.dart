import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/dependency_injection.dart';
import 'core/routing/app_router.dart';
import 'shop_craft_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set orientations to only allow portrait mode
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  setupGetIt();

  await ScreenUtil.ensureScreenSize();

  runApp(ShopCraftApp(appRouter: AppRouter()));
}
