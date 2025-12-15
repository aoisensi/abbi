import 'package:abbi/src/provider/platform_windows_provider.dart';
import 'package:abbi/src/provider/steam_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as $path;

final omoriPathProvider = FutureProvider((ref) async {
  if (ref.watch(omoriInstalledProvider) != 1) return null;
  final libraryFolders = await ref.watch(steamLibraryFoldersProvider.future);
  final folderPath =
      libraryFolders.values.firstWhere(
            (folder) => (folder['apps'] as Map<dynamic, dynamic>).containsKey(
              '1150690',
            ),
          )?['path']
          as String?;
  if (folderPath == null) return null;
  return $path.join(folderPath, 'steamapps', 'common', 'OMORI');
});
