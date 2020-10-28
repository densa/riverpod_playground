import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

final searchTextProvider = StateProvider.autoDispose<String>((_) => '');

final searchResultProvider = FutureProvider.autoDispose<String>((ref) async {
  final search = ref.watch(searchTextProvider).state;
  if (search.isNotEmpty) {
    await Future.delayed(Duration(seconds: 3));
  }
  return search;
});

class TextSearchScreen extends StatelessWidget {
  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (context) => TextSearchScreen(),
    );
  }

  const TextSearchScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: TextField(
                onChanged: (text) {
                  context.read(searchTextProvider).state = text;
                },
              ),
            ),
            _SearchResult(),
          ],
        ),
      ),
    );
  }
}

class _SearchResult extends HookWidget {
  const _SearchResult({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchResult = useProvider(searchResultProvider);
    return searchResult.when(
      data: (data) => Text(data),
      loading: () => CircularProgressIndicator(),
      error: (_, error) => Text(error.toString()),
    );
  }
}