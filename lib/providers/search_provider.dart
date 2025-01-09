import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/database_service.dart';

final searchQueryProvider = StateProvider<String>((ref) => '');

final searchResultsProvider = FutureProvider<List<Map<String, dynamic>>>((ref) {
  final query = ref.watch(searchQueryProvider).toLowerCase();

  if (query.isEmpty) {
    return Future.value([]);
  }

  return DatabaseService.searchCitizens(query);
});

final searchControllerProvider = StateProvider.autoDispose((ref) {
  final controller = TextEditingController();
  ref.onDispose(() => controller.dispose());
  return controller;
});
