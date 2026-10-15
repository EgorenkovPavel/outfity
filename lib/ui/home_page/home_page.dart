import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:outfity/ui/home_page/home_bloc.dart';
import 'package:outfity/ui/home_page/widgets/cloth_item.dart';
import 'package:outfity/ui/home_page/widgets/filter_chip_group.dart';

import '../../core/extensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _onAddPress(BuildContext context){
    context.push('/add');
  }

  @override
  Widget build(BuildContext context) {
    final clothes = context.watch<HomeBloc>().state.clothes;
    final state = context.watch<HomeBloc>().state;
    final bloc = context.read<HomeBloc>();

    return Scaffold(
      appBar: AppBar(title: Text('Outfity'),),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FilterChipGroup(
                  title: context.loc.category,
                  items: state.categories
                      .map((item) => (id: item.id, title: item.title))
                      .toList(),
                  selectedIds: state.selectedCategoryIds,
                  onSelectionChanged: (ids) {
                    bloc.add(HomeEvent.categoryFiltersChanged(ids));
                  },
                ),
                const SizedBox(height: 16),
                FilterChipGroup(
                  title: context.loc.location,
                  items: state.locations
                      .map((item) => (id: item.id, title: item.title))
                      .toList(),
                  selectedIds: state.selectedLocationIds,
                  onSelectionChanged: (ids) {
                    bloc.add(HomeEvent.locationFiltersChanged(ids));
                  },
                ),
                if (state.selectedCategoryIds.isNotEmpty ||
                    state.selectedLocationIds.isNotEmpty)
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        bloc.add(const HomeEvent.filtersCleared());
                      },
                      child: Text(context.loc.reset_filters),
                    ),
                  ),
                Expanded(
                  child: state.clothes.isEmpty
                      ? Center(child: Text(context.loc.nothing_found))
                      : GridView.builder(
                    itemCount: state.clothes.length,
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return ClothItem(state.clothes[index]);
                    },
                  ),
                ),
              ],
            )
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => _onAddPress(context)),
    );
  }
}

