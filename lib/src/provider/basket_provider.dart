import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as $path;
import 'package:sembast/sembast_io.dart';

final basketProvider = FutureProvider((_) async {
  final path = $path.join(
    $path.dirname(Platform.resolvedExecutable),
    'basket.db',
  );
  return await databaseFactoryIo.openDatabase(path);
});
