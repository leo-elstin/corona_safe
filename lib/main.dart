import 'package:coronasafe/localization.dart';
import 'package:coronasafe/ui/home/view/home_page.dart';
import 'package:coronasafe/view_model/advices_model.dart';
import 'package:coronasafe/view_model/app_langunage.dart';
import 'package:coronasafe/view_model/data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppLanguage appLanguage = AppLanguage();
  await appLanguage.fetchLocale();
  runApp(App(
    appLanguage: appLanguage,
  ));
}

class App extends StatelessWidget {
  final AppLanguage appLanguage;

  App({this.appLanguage});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppLanguage>(
      create: (context) => appLanguage,
      child: Consumer<AppLanguage>(
        builder: (context, model, child) {
          return MaterialApp(
            title: 'Covid\'19',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.red,
            ),
            localizationsDelegates: [
              // ... app-specific localization delegate[s] here
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              AppLocalizations.delegate,
            ],
            locale: model.appLocal,
            supportedLocales: [
              const Locale('en', 'US'),
              const Locale('ta'),
              const Locale('ml'),
              const Locale('hi'),
            ],
            home: MultiProvider(
              providers: [
                ChangeNotifierProvider<DataModel>(
                  create: (context) => DataModel(),
                ),
                ChangeNotifierProvider<AdvicesModel>(
                  create: (context) => AdvicesModel(),
                ),
              ],
              child: HomePage(),
            ),
          );
        },
      ),
    );
  }
}
