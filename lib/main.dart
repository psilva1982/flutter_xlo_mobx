import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:xlo/screens/base/BaseScreen.dart';
import 'package:xlo/store/page_store.dart';

void main() async {
  await initializeParse();
  setupLocators();
  runApp(MyApp());
}

Future<void> initializeParse() async {
  await Parse().initialize(
    '1tKcm6IAtx8Le6PGCE1AemqMK3798ApSDpM8Frx4',
    'https://parseapi.back4app.com/',
    clientKey: 'rQ0gdB1uUpD2um6a1YNx3ySH9isWOhdWBkbGHaZg',
    autoSendSessionId: true,
    debug: true,
  );
}

void setupLocators() {
  GetIt.I.registerSingleton(PageStore());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XLO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          scaffoldBackgroundColor: Colors.indigo,
          appBarTheme: AppBarTheme(
            elevation: 0,
          ),
          inputDecorationTheme: InputDecorationTheme(),
          textSelectionTheme:
              TextSelectionThemeData(cursorColor: Colors.indigo)),
      home: BaseScreen(),
    );
  }
}
