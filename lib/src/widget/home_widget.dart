import 'package:abbi/src/widget/page/profile_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeWidget extends ConsumerWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final page = ProfilePageWidget.page;
    return Scaffold(
      appBar: AppBar(actions: page.actions?.call(context, ref)),
      body: page.body(context, ref),
    );
  }
}

class HomePage {
  final Widget Function(BuildContext, WidgetRef) body;
  final List<Widget> Function(BuildContext, WidgetRef)? actions;

  const HomePage({required this.body, this.actions});
}
