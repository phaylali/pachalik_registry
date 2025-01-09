class Comment {
  final int? id;
  final int personId;
  final String text;
  final DateTime createdAt;
  final bool isRTL;

  Comment({
    this.id,
    required this.personId,
    required this.text,
    required this.createdAt,
    required this.isRTL,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'person_id': personId,
      'text': text,
      'created_at': createdAt.toIso8601String(),
      'is_rtl': isRTL ? 1 : 0,
    };
  }

  factory Comment.fromMap(Map<String, dynamic> map) {
    return Comment(
      id: map['id'],
      personId: map['person_id'],
      text: map['text'],
      createdAt: DateTime.parse(map['created_at']),
      isRTL: map['is_rtl'] == 1,
    );
  }
}
