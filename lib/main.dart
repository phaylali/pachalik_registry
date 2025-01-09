// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'services/database_service.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'providers/theme_provider.dart';
import 'router.dart';

// Providers
final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>((ref) {
  return ThemeNotifier();
});

final localeProvider = StateNotifierProvider<LocaleNotifier, Locale>((ref) {
  return LocaleNotifier();
});

void main() async {
  sqfliteFfiInit();
  
  WidgetsFlutterBinding.ensureInitialized();
  databaseFactory = databaseFactoryFfi;
  await DatabaseService.initialize();
  await DatabaseService.addDummyData();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    final locale = ref.watch(localeProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router,
      title: 'Ouedlaou Registry',
      themeMode: themeMode,
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.tajawalTextTheme(ThemeData.light().textTheme),
      ),
      darkTheme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.tajawalTextTheme(ThemeData.dark().textTheme),
      ),
      locale: locale,
    );
  }
}
