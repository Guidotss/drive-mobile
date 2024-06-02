import 'package:expenses_manager/presentation/providers/ui/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomAppBar extends ConsumerWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scaffoldKey = ref.watch(drawerKeyProvider);
    void openDrawer() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        scaffoldKey.currentState?.openDrawer();
      });
    }

    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: openDrawer,
      ),
      title: const Center(
        child: Text("Dashboard",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.2)),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {
            // Open the notifications
          },
        )
      ],
    );
  }
}
