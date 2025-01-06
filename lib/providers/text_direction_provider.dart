import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final textDirectionProvider =
    Provider.family<TextDirection, String>((ref, text) {
  return RegExp(r'[\u0600-\u06FF]').hasMatch(text)
      ? TextDirection.rtl
      : TextDirection.ltr;
});
