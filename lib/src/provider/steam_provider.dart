import 'dart:io';

import 'package:abbi/src/provider/platform_windows_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as $path;
import 'package:vdf/vdf.dart';

final steamLibraryFoldersProvider = FutureProvider((ref) async {
  final steamPath = ref.watch(steamPathProvider);
  if (steamPath == null) throw 'Steam is not installed';
  final libraryFoldersPath = $path.join(
    steamPath,
    'steamapps',
    'libraryfolders.vdf',
  );
  final vdf = vdfDecode(await File(libraryFoldersPath).readAsString());
  return vdf['libraryfolders'] as Map<dynamic, dynamic>;
});
