import 'package:isar/isar.dart';
part 'comments.g.dart';

@collection
class Comment {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value)
  final int personId;

  final String text;
  final DateTime createdAt;
  final bool isRTL;

  Comment({
    required this.personId,
    required this.text,
    required this.createdAt,
    required this.isRTL,
  });
}
