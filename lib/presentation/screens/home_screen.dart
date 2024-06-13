import 'package:expenses_manager/presentation/providers/ui/ui_provider.dart';
import 'package:expenses_manager/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  static const String routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey<ScaffoldState> scaffoldKey = ref.watch(drawerKeyProvider);

    return Scaffold(
        key: scaffoldKey,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: CustomAppBar(),
          ),
        ),
        body: HomeScreenBody(),
        drawer: const CustomDrawer(),
        bottomNavigationBar: const CustomBottomNavigation()

      );
  }
}
