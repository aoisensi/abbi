import 'package:abbi/src/provider/mod_provider.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../home_widget.dart';

part 'mods/mod_id_card_widget.dart';

class ModsPageWidget extends ConsumerWidget {
  const ModsPageWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncModIds = ref.watch(_loadedModIdsProvider);
    if (asyncModIds.hasValue) {
      final ids = asyncModIds.requireValue.sorted().toList();
      return ListView.builder(
        itemBuilder: (context, index) {
          final id = ids[index];
          return _ModIdCardWidget(id);
        },
        itemCount: ids.length,
      );
    }
    if (asyncModIds.hasError) {
      return Center(child: Text(asyncModIds.error.toString()));
    }
    return const Center(child: CircularProgressIndicator());
  }

  static final page = HomePage(
    body: (context, ref) => const ModsPageWidget(),
    label: 'Mods',
    icon: Icons.list,
    actions: (context, ref) => [
      IconButton(
        onPressed: () async {
          ref.invalidate(modFilesProvider);
        },
        icon: const Icon(Icons.refresh),
      ),
    ],
  );
}

final _loadedModIdsProvider = FutureProvider((ref) async {
  final mods = await ref.watch(_loadedModsProvider.future);
  return mods.map((mod) => mod.manifest.id).toSet();
});

final _loadedModsProvider = FutureProvider((ref) async {
  final mods = await ref.watch(allModProvider.future);
  return mods
      .where((async) => async.hasValue)
      .map((async) => async.requireValue)
      .toSet();
});
