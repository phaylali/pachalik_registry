import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/text_direction_provider.dart';
import '../services/database_service.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddCommentField extends ConsumerWidget {
  final int personId;

  const AddCommentField({super.key, required this.personId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = TextEditingController();
    final textDirection = ref.watch(textDirectionProvider(controller.text));

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        textDirection: textDirection,
        onSubmitted: (value) async {
          if (controller.text.isNotEmpty) {
            final comment = {
              'person_id': personId,
              'text': controller.text,
              'created_at': DateTime.now().toIso8601String(),
              'is_rtl': textDirection == TextDirection.rtl ? 1 : 0,
            };
            await DatabaseService.addComment(comment);
            controller.clear();
          }
        },
        decoration: InputDecoration(
          hintText: AppLocalizations.of(context)!.addComment,
          suffixIcon: IconButton(
            icon: const Icon(Icons.send),
            onPressed: () async {
              if (controller.text.isNotEmpty) {
                final comment = {
                  'person_id': personId,
                  'text': controller.text,
                  'created_at': DateTime.now().toIso8601String(),
                  'is_rtl': textDirection == TextDirection.rtl ? 1 : 0,
                };
                await DatabaseService.addComment(comment);
                controller.clear();
              }
            },
          ),
        ),
      ),
    );
  }
}
