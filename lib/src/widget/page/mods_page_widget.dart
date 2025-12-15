import 'dart:io';

import 'package:abbi/src/provider/mod_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../home_widget.dart';

class ModsPageWidget extends ConsumerWidget {
  const ModsPageWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncModFiles = ref.watch(modFilesProvider);
    if (asyncModFiles.hasValue) {
      final modFiles = asyncModFiles.requireValue.toList();
      return ListView.builder(
        itemBuilder: (context, index) {
          final entity = modFiles[index];
          return _ModsPageCardWidget(entity);
        },
        itemCount: modFiles.length,
      );
    }
    if (asyncModFiles.hasError) {
      return Center(child: Text(asyncModFiles.error.toString()));
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

class _ModsPageCardWidget extends ConsumerWidget {
  final FileSystemEntity entity;

  const _ModsPageCardWidget(this.entity);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncMod = ref.watch(modProvider(entity));
    if (asyncMod.hasValue) {
      final mod = asyncMod.requireValue;
      if (mod == null) {
        return const Card(child: ListTile(title: Text('Not Mod file')));
      }
      return Card(child: ListTile(title: Text(mod.manifest.name)));
    }
    if (asyncMod.hasError) {
      return Card(child: ListTile(title: Text(asyncMod.error.toString())));
    }
    return const Card(child: ListTile(leading: CircularProgressIndicator()));
  }
}
