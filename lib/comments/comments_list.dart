import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:intl/intl.dart' as intl;

import 'package:isar/isar.dart';
import 'package:pachalik_registry/comments/comments.dart';

import '../providers/text_direction_provider.dart';
import '../services/database_service.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CommentsList extends StatelessWidget {
  final int personId;

  const CommentsList({super.key, required this.personId});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Comment>>(
      stream: DatabaseService.isar.comments
          .filter()
          .personIdEqualTo(personId)
          .sortByCreatedAtDesc()
          .watch(fireImmediately: true),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const CircularProgressIndicator();

        final comments = snapshot.data!;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:
              comments.map((comment) => CommentItem(comment: comment)).toList(),
        );
      },
    );
  }
}

class CommentItem extends ConsumerWidget {
  final Comment comment;

  const CommentItem({super.key, required this.comment});

  @override
  Widget build(BuildContext context, ref) {
    final textDirection = ref.watch(textDirectionProvider(comment.text));

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: textDirection == TextDirection.rtl
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.end,
          children: [
            Text(
              comment.text,
              textDirection: textDirection == TextDirection.rtl
                  ? TextDirection.rtl
                  : TextDirection.ltr,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Row(
              mainAxisAlignment: textDirection == TextDirection.rtl
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  intl.DateFormat('dd/MM/yyyy HH:mm').format(comment.createdAt),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red, size: 20),
                  onPressed: () => showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(AppLocalizations.of(context)!.deleteComment),
                      content: Text(AppLocalizations.of(context)!
                          .deleteCommentConfirmation),
                      actions: [
                        TextButton(
                          onPressed: () => context.pop(),
                          child: Text(AppLocalizations.of(context)!.cancel),
                        ),
                        TextButton(
                          onPressed: () {
                            DatabaseService.isar.writeTxn(() async {
                              await DatabaseService.isar.comments
                                  .delete(comment.id);
                            });
                            context.pop();
                          },
                          child: Text(AppLocalizations.of(context)!.delete),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
