import 'package:flutter/material.dart';
import 'package:outfity/domain/interactor.dart';
import 'package:outfity/ui/home_page/widgets/cloth_item.dart';

import '../cloth_detail_page/cloth_detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _onAddPress(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (context) => const ClothDetailPage.input(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Outfity'),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) =>ClothItem(Interactor.clothes[index]),
          itemCount: Interactor.clothes.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => _onAddPress(context)),
    );
  }
}

