import 'package:abbi/src/provider/config_provider.dart';
import 'package:abbi/src/provider/profile_provider.dart';
import 'package:abbi/src/widget/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfilePageWidget extends ConsumerWidget {
  const ProfilePageWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncIds = ref.watch(profileIdsProvider);
    final asyncProfile = ref.watch(currentProfileNotifier);
    if (asyncIds.hasValue && asyncProfile.hasValue) {
      final ids = asyncIds.requireValue.toList();
      return RadioGroup<int?>(
        groupValue: asyncProfile.requireValue,
        onChanged: (value) async {
          await ref.read(currentProfileNotifier.notifier).put(value);
        },
        child: ListView.builder(
          itemBuilder: (context, index) {
            return _ProfilePageItemWidget(ids[index]);
          },
          itemCount: ids.length,
        ),
      );
    }
    if (asyncIds is AsyncError) {
      return Center(child: Text(asyncIds.error.toString()));
    }
    if (asyncProfile is AsyncError) {
      return Center(child: Text(asyncProfile.error.toString()));
    }
    return const Center(child: CircularProgressIndicator());
  }

  static final page = HomePage(
    body: (context, ref) => const ProfilePageWidget(),
    actions: (context, ref) => [
      IconButton(
        onPressed: () async {
          await ref.read(profileIdsProvider.notifier).create();
        },
        icon: const Icon(Icons.add),
      ),
    ],
  );
}

class _ProfilePageItemWidget extends ConsumerWidget {
  final int id;

  const _ProfilePageItemWidget(this.id);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RadioListTile<int?>(value: id, title: Text(id.toString()));
  }
}
