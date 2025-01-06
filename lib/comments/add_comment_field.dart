import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/search_provider.dart';
import '../providers/text_direction_provider.dart';
import '../services/database_service.dart';
import 'comments.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddCommentField extends ConsumerWidget {
  final int personId;

  const AddCommentField({super.key, required this.personId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(searchControllerProvider);
    final textDirection = ref.watch(textDirectionProvider(controller.text));

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        textDirection: textDirection,
        onChanged: (text) {
          ref.read(searchControllerProvider.notifier).state = controller;
        },
        onSubmitted: (value) async {
          if (controller.text.isNotEmpty) {
            final comment = Comment(
              personId: personId,
              text: controller.text,
              createdAt: DateTime.now(),
              isRTL: textDirection == TextDirection.rtl,
            );
            await DatabaseService.isar.writeTxn(() async {
              await DatabaseService.isar.comments.put(comment);
            });
            controller.clear();
          }
        },
        decoration: InputDecoration(
          hintText: AppLocalizations.of(context)!.addComment,
          suffixIcon: IconButton(
            icon: const Icon(Icons.send),
            onPressed: () async {
              if (controller.text.isNotEmpty) {
                final comment = Comment(
                  personId: personId,
                  text: controller.text,
                  createdAt: DateTime.now(),
                  isRTL: textDirection == TextDirection.rtl,
                );
                await DatabaseService.isar.writeTxn(() async {
                  await DatabaseService.isar.comments.put(comment);
                });
                controller.clear();
              }
            },
          ),
        ),
      ),
    );
  }
}
