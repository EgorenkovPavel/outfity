import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:outfity/ui/home_page/home_bloc.dart';
import 'package:outfity/ui/home_page/widgets/cloth_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _onAddPress(BuildContext context){
    context.push('/add');
  }

  @override
  Widget build(BuildContext context) {
    final clothes = context.watch<HomeBloc>().state.clothes;
    return Scaffold(
      appBar: AppBar(title: Text('Outfity'),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) =>ClothItem(clothes[index]),
          itemCount: clothes.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => _onAddPress(context)),
    );
  }
}

