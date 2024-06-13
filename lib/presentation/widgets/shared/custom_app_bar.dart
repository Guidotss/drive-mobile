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
      title: const Text('Search...',
          style: TextStyle(color: Colors.grey, fontSize: 20)),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            showSearch(
              context: context,
              delegate: CustomSearchDelegate(),
            );
          },
        ),
      ],
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  final List<String> data = [
    "Flutter",
    "Dart",
    "React",
    "Angular",
    "Vue",
    "Svelte",
    "JavaScript",
    "TypeScript",
    "Python",
    "Java",
    "Kotlin",
    "Swift",
    "Objective-C",
    "C#",
    "C++",
    "PHP",
    "Ruby",
    "Go",
    "Rust",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<String> results = data
        .where((element) => element.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(results[index]),
          onTap: () {
            close(context, results[index]);
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<String> suggestions = query.isEmpty
        ? data
        : data
            .where((element) =>
                element.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestions[index]),
          onTap: () {
            query = suggestions[index];
            showResults(context);
          },
        );
      },
    );
  }
}
