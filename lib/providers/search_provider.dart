import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import '../../models/person.dart';
import '../services/database_service.dart';

final searchQueryProvider = StateProvider<String>((ref) => '');

final searchResultsProvider = StreamProvider<List<Person>>((ref) {
  final query = ref.watch(searchQueryProvider).toLowerCase();

  if (query.isEmpty) {
    return Stream.value([]);
  }

  return DatabaseService.isar.persons
      .filter()
      .optional(
        query.isNotEmpty,
        (q) => q
            .firstNameArContains(query)
            .or()
            .firstNameEnMatches('*$query*', caseSensitive: false)
            .or()
            .lastNameArMatches('*$query*', caseSensitive: false)
            .or()
            .lastNameEnMatches('*$query*', caseSensitive: false)
            .or()
            .cnieMatches('*$query*', caseSensitive: false)
            .or()
            .voterNumberMatches('*$query*', caseSensitive: false),
      )
      .watch(fireImmediately: true);
});
final searchControllerProvider = StateProvider.autoDispose((ref) {
  final controller = TextEditingController();
  ref.onDispose(() => controller.dispose());
  return controller;
});
