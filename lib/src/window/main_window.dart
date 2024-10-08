import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../page/about_page.dart';
import '../page/profiles_page.dart';
import '../provider/available_mods_provider.dart';
import '../view/run_with_mods_floating_action_button.dart';
import '../page/settting_page.dart';
import '../page/available_mods_page.dart';

const _pages = <(Widget, IconData, String)>[
  (AvailableModsPage(), Icons.description, 'Mods'),
  (ProfilesPage(), Icons.person, 'Profiles'),
  (SettingPage(), Icons.settings, 'Settings'),
  (AboutPage(), Icons.info, 'About'),
];

class MainWindow extends HookConsumerWidget {
  const MainWindow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final page = usePageController();

    final isSmallScreen = MediaQuery.of(context).size.width <= 768;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Abbi'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const SettingPage();
                },
              ));
            },
          ),
          IconButton(
            onPressed: () {
              ref.invalidate(availableModsFseProvider);
            },
            icon: const Icon(Icons.refresh),
          ),
          const _MainWindowPopupShowButton(),
        ],
      ),
      body: Row(
        children: [
          isSmallScreen ? const SizedBox.shrink() : _MainWindowDrawer(page),
          Expanded(
            child: PageView(
              controller: page,
              children: _pages.map((e) => e.$1).toList(),
            ),
          ),
        ],
      ),
      floatingActionButton: const RunWithModsFloatingActionButton(),
      drawer: isSmallScreen ? _MainWindowDrawer(page) : null,
    );
  }
}

class _MainWindowPopupShowButton extends ConsumerWidget {
  const _MainWindowPopupShowButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isShowErrorMods = ref.watch(availableModsShowErrorProvider);
    return PopupMenuButton(
      itemBuilder: (context) => [
        CheckedPopupMenuItem(
          checked: isShowErrorMods,
          onTap: () {
            ref.read(availableModsShowErrorProvider.notifier).state =
                ref.read(availableModsShowErrorProvider);
          },
          child: const Text('Show errored mods'),
        ),
      ],
    );
  }
}

class _MainWindowDrawer extends ConsumerWidget {
  const _MainWindowDrawer(this.page);

  final PageController page;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: ListView.builder(
        itemBuilder: (context, i) {
          final e = _pages[i];
          return ListTile(
            leading: Icon(e.$2),
            title: Text(e.$3),
            onTap: () {
              page.jumpToPage(i);
            },
          );
        },
        itemCount: _pages.length,
      ),
    );
  }
}
