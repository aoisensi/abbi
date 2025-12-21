import 'dart:async';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as $path;

final directoryWatchProvider = AsyncNotifierProvider.family(
  DirectoryWatchNotifier.new,
);

class DirectoryWatchNotifier extends AsyncNotifier<Set<FileSystemEntity>> {
  final String path;

  DirectoryWatchNotifier(this.path);

  @override
  FutureOr<Set<FileSystemEntity>> build() async {
    final directory = Directory(path);
    final set = await directory.list().toSet();
    final listener = directory.watch().listen((event) async {
      final set = await future;
      FileSystemEntity created() =>
          event.isDirectory ? Directory(event.path) : File(event.path);
      Iterable<FileSystemEntity> removed() =>
          set.where((entity) => entity.path != event.path);
      switch (event) {
        case FileSystemCreateEvent():
          state = AsyncData({...set, created()});
        case FileSystemModifyEvent():
          state = AsyncData({...removed(), created()});
        case FileSystemDeleteEvent():
          state = AsyncData({...removed()});
        case FileSystemMoveEvent(:final destination):
          state = AsyncData({
            ...removed(),
            if (destination != null && $path.dirname(destination) == path)
              event.isDirectory ? Directory(destination) : File(destination),
          });
      }
    });
    ref.onDispose(listener.cancel);
    return set;
  }
}
