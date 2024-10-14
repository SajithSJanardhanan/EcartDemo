import 'package:ecart/modules/home/binding/home_binding.dart';
import 'package:ecart/modules/home/view/home_view.dart';
import 'package:ecart/theme/app_theme.dart';
import 'package:ecart/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'base_classes/base_binding.dart';
import 'base_classes/base_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialConfig();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Axionic Exclusive',
      debugShowCheckedModeBanner: false,
      initialBinding: BaseBinding(),
      supportedLocales: const [Locale('en')],
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      builder: EasyLoading.init(),
      themeMode: ThemeMode.system,
      initialRoute: Routes.home,
      unknownRoute: GetPage(
          name: Routes.home,
          page: () => const HomePage(),
          binding: HomeBindings()),
      getPages: [
        GetPage(
            name: Routes.home,
            page: () => const HomePage(),
            binding: HomeBindings()),
      ],
    );
  }
}

Future<void> initialConfig() async {

  Get.put<BaseController>(BaseController());
}

