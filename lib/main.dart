import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'constants/app_themes.dart';
import 'screens/main_navigation_screen.dart';
void main() {
runApp(const ProviderScope(child: RaqsJanApp()));
}
class RaqsJanApp extends StatelessWidget {
const RaqsJanApp({super.key});
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Raqs Jan',
debugShowCheckedModeBanner: false,
theme: AppThemes.lightTheme,
darkTheme: AppThemes.darkTheme,
themeMode: ThemeMode.system,
localizationsDelegates: const [
GlobalMaterialLocalizations.delegate,
GlobalWidgetsLocalizations.delegate,
GlobalCupertinoLocalizations.delegate,
],
supportedLocales: const [
Locale('en'),
Locale('fa'),
],
home: const MainNavigationScreen(),
);
}
}