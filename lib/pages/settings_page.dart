// lib/pages/settings_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../main.dart'; // Add this import

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    final locale = ref.watch(localeProvider);

    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.settings)),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final maxWidth =
                constraints.maxWidth > 600 ? 600.0 : constraints.maxWidth * 0.9;

            return SizedBox(
              width: maxWidth,
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  Card(
                    child: ListTile(
                      title: Text(AppLocalizations.of(context)!.themeMode),
                      trailing: DropdownButton<ThemeMode>(
                        value: themeMode,
                        isDense: true,
                        borderRadius: BorderRadius.circular(12),
                        elevation: 4,
                        underline: Container(), // Removes the default underline
                        icon: const Icon(Icons.arrow_drop_down_rounded),
                        items: ThemeMode.values.map((mode) {
                          return DropdownMenuItem(
                            value: mode,
                            child: Text(getThemeModeName(mode, context)),
                          );
                        }).toList(),
                        onChanged: (value) {
                          if (value != null) {
                            ref
                                .read(themeProvider.notifier)
                                .setThemeMode(value);
                          }
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Card(
                    child: ListTile(
                      title: Text(AppLocalizations.of(context)!.language),
                      trailing: DropdownButton<Locale>(
                        value: locale,
                        isDense: true,
                        borderRadius: BorderRadius.circular(12),
                        elevation: 4,
                        underline: Container(),
                        icon: const Icon(Icons.arrow_drop_down_rounded),
                        items: [
                          DropdownMenuItem(
                            value: const Locale('en'),
                            child: Text(AppLocalizations.of(context)!.english),
                          ),
                          DropdownMenuItem(
                            value: const Locale('ar'),
                            child: Text(AppLocalizations.of(context)!.arabic),
                          ),
                        ],
                        onChanged: (value) {
                          if (value != null) {
                            ref.read(localeProvider.notifier).setLocale(value);
                          }
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Card(
                    child: ListTile(
                      onTap: () async {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) => AlertDialog(
                            content: Row(
                              children: [
                                const CircularProgressIndicator(),
                                const SizedBox(width: 24),
                                Text(AppLocalizations.of(context)!
                                    .syncInProgress),
                              ],
                            ),
                          ),
                        );
                        await Future.delayed(const Duration(seconds: 5));
                        if (context.mounted) {
                          Navigator.pop(context);
                        }
                      },
                      title: Text(AppLocalizations.of(context)!.syncData),
                      trailing: const Icon(Icons.sync),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Card(
                    child: ListTile(
                      onTap: () => context.go('/login'),
                      title: Text(AppLocalizations.of(context)!.logOut),
                      trailing: const Icon(Icons.logout),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  String getThemeModeName(ThemeMode mode, BuildContext context) {
    switch (mode) {
      case ThemeMode.system:
        return AppLocalizations.of(context)!.systemTheme;
      case ThemeMode.light:
        return AppLocalizations.of(context)!.lightTheme;
      case ThemeMode.dark:
        return AppLocalizations.of(context)!.darkTheme;
    }
  }
}
