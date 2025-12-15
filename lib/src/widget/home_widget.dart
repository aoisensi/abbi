import 'package:abbi/src/widget/page/mods_page_widget.dart';
import 'package:abbi/src/widget/page/profile_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeWidget extends HookConsumerWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = useState(0);
    final page = _pages[pageIndex.value];
    return Scaffold(
      appBar: AppBar(actions: page.actions?.call(context, ref)),
      body: Row(
        children: [
          NavigationRail(
            destinations: [
              for (final page in _pages)
                NavigationRailDestination(
                  icon: Icon(page.icon),
                  label: Text(page.label),
                ),
            ],
            selectedIndex: pageIndex.value,
            onDestinationSelected: (index) => pageIndex.value = index,
          ),
          Expanded(child: page.body(context, ref)),
        ],
      ),
    );
  }

  static final _pages = [ProfilePageWidget.page, ModsPageWidget.page];
}

class HomePage {
  final Widget Function(BuildContext, WidgetRef) body;
  final String label;
  final IconData icon;
  final List<Widget> Function(BuildContext, WidgetRef)? actions;

  const HomePage({
    required this.body,
    required this.label,
    required this.icon,
    this.actions,
  });
}
