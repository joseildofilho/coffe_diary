import 'package:coffe_diary/domain/entities/brew.dart';
import 'package:coffe_diary/presentation/pages/home/controller.dart';
import 'package:coffe_diary/presentation/pages/home/state.dart';
import 'package:flutter/material.dart';
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/add_brew');
          },
        ),
      );
}

class _MainList extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ValueListenableBuilder<MainListState>(
        valueListenable: context.read<HomePresenter>().mainList,
        builder: (_, value, __) {
          print('printing out');
          return ListView(
            children: value.when(
              initial: () => [
                Shimmer.fromColors(
                    child: const BrewItemTile(Brew.initial()),
                    baseColor: Colors.grey.shade400,
                    highlightColor: Colors.grey)
              ],
              loading: () => [const BrewItemTile(Brew.initial())],
              done: (list) => list.map(BrewItemTile.new).toList(),
            ),
          );
        },
      );
}

class BrewItemTile extends StatelessWidget {
  final Brew brew;

  const BrewItemTile(this.brew, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Card(
        child: ListTile(
          title: Text('Coffee: ${brew.description}'),
        ),
      );
}
