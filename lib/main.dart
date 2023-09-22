import 'package:flutter/material.dart';
import 'package:flutter_starter/util/environment_config.dart';
import 'l10n/gen_l10n/app_localizations.dart';
import 'navigation/router_config.dart';

void main() {
  EnvironmentConfig.setEnv(Environment.dev); // default env set to dev
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: RouterMap.router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      ///To test responsive widget 
      ///call home: const ResponsiveWidgetExample(),
    );
  }
}

