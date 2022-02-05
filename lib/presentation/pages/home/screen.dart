import 'package:coffe_diary/domain/entities/brew.dart';
import 'package:coffe_diary/presentation/pages/home/tunnels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Coffee Diary'),
        ),
        body: _MainList(),
      );
}

class _MainList extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final state = useValueListenable(context.read<HomeTunnels>().mainList);

    const brew = Brew(coffeType: 'Arabica', score: 8);
    final widget = state.when(
        initial: () => Shimmer.fromColors(
            child: BrewItemTile(brew: brew),
            baseColor: Colors.grey.shade400,
            highlightColor: Colors.grey),
        loading: () => BrewItemTile(brew: brew),
        done: () => BrewItemTile(brew: brew));
    return ListView(
      children: [widget],
    );
  }
}

class BrewItemTile extends StatelessWidget {
  final Brew brew;

  const BrewItemTile({Key? key, required this.brew}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('Coffee: ${brew.coffeType}'),
        subtitle: Text('Score: ${brew.score}'),
      ),
    );
  }
}
