import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../person_list_item.dart';
import '../providers/search_provider.dart';
import '../providers/text_direction_provider.dart';

class SearchDialog extends ConsumerWidget {
  const SearchDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchResults = ref.watch(searchResultsProvider);
    final controller = ref.watch(searchControllerProvider);
    final isSmallScreen = MediaQuery.of(context).size.width < 600;
    final textDirection = ref.watch(textDirectionProvider(controller.text));

    if (isSmallScreen) {
      return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        context.pop();
                        controller.clear();
                      },
                    ),
                    Expanded(
                      child: Directionality(
                        textDirection: textDirection,
                        child: SearchBar(
                          controller: controller,
                          onChanged: (value) {
                            ref.read(searchQueryProvider.notifier).state =
                                value;
                          },
                          hintText: AppLocalizations.of(context)!.search,
                          padding: const WidgetStatePropertyAll<EdgeInsets>(
                            EdgeInsets.symmetric(horizontal: 16.0),
                          ),
                          backgroundColor: WidgetStatePropertyAll<Color>(
                            Theme.of(context)
                                .colorScheme
                                .surfaceContainerHighest,
                          ),
                          leading: const Icon(Icons.search),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: searchResults.when(
                    data: (people) => ListView.builder(
                      itemCount: people.length,
                      itemBuilder: (context, index) =>
                          PersonListItem(person: people[index]),
                    ),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (err, stack) => Text('Error: $err'),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        height: MediaQuery.of(context).size.height * 0.8,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    context.pop();
                    controller.clear();
                  },
                ),
                Expanded(
                    child: SearchBar(
                  controller: controller,
                  onChanged: (value) {
                    ref.read(searchQueryProvider.notifier).state = value;
                  },
                  hintText: AppLocalizations.of(context)!.search,
                  padding: const WidgetStatePropertyAll<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Theme.of(context).colorScheme.surfaceContainerHighest,
                  ),
                  leading: const Icon(Icons.search),
                )),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: searchResults.when(
                data: (people) => ListView.builder(
                  itemCount: people.length,
                  itemBuilder: (context, index) =>
                      PersonListItem(person: people[index]),
                ),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (err, stack) => Text('Error: $err'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
