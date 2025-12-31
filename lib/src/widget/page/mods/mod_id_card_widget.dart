part of '../mods_page_widget.dart';

class _ModIdCardWidget extends ConsumerWidget {
  final String id;

  const _ModIdCardWidget(this.id);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(child: ListTile(title: Text(id)));
  }
}
