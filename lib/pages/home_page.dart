// lib/pages/home_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../providers/search_provider.dart';
import '../providers/text_direction_provider.dart';
import '../services/search_dialog.dart';
import '../services/voter_statistics.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(searchControllerProvider);
    final textDirection = ref.watch(textDirectionProvider(controller.text));

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.website_title),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => context.push('/settings'),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final maxWidth = constraints.maxWidth > 600
                  ? 600.0
                  : constraints.maxWidth * 0.9;

              return Column(
                children: [
                  const SizedBox(height: 20),
                  SizedBox(
                    width: maxWidth,
                    child: Directionality(
                      textDirection: textDirection,
                      child: SearchBar(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const SearchDialog(),
                          );
                        },
                        onSubmitted: (value) {
                          showDialog(
                            context: context,
                            builder: (context) => const SearchDialog(),
                          );
                        },
                        controller: controller,
                        hintText: AppLocalizations.of(context)!.search,
                        padding: const WidgetStatePropertyAll<EdgeInsets>(
                          EdgeInsets.symmetric(horizontal: 16.0),
                        ),
                        backgroundColor: WidgetStatePropertyAll<Color>(
                          Theme.of(context).colorScheme.surfaceContainerHighest,
                        ),
                        leading: const Icon(Icons.search),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: maxWidth,
                    child: const VoterStatistics(),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
