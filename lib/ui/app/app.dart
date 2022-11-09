import 'package:flutter/material.dart';
import 'package:sample/constants/consts.dart';
import 'package:sample/ui/route/router.dart';
import 'package:sample/ui/route/routes.dart';
import 'package:sample/ui/theme/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Consts.appName,
      initialRoute: Routes.home,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: MRouter.onGenerateRoute,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      //themeMode: ThemeMode.dark,
      //themeMode: ThemeMode.system,
    );
  }
}
