import 'package:flutter/material.dart';
import 'package:outfity/ui/shared/image_placeholder.dart';

import '../../../domain/models.dart';
import '../../cloth_detail_page/cloth_detail_page.dart';

class ClothItem extends StatelessWidget {
  final Cloth cloth;

  const ClothItem(this.cloth, {super.key});

  void _onTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (context) => ClothDetailPage.edit(clothId: cloth.id),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => _onTap(context),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(child: const ImagePlaceholder()),
                SizedBox(height: 8),
                Text(
                  cloth.title,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
