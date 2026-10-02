import 'package:flutter/material.dart';
import 'package:outfity/domain/interactor.dart';
import 'package:outfity/domain/models.dart';

import '../shared/image_placeholder.dart';
import 'widgets/input_field.dart';
import 'widgets/item_chooser.dart';

class ClothDetailPage extends StatefulWidget {
  final String? clothId;

  const ClothDetailPage.input({super.key}) : clothId = null;

  const ClothDetailPage.edit({super.key, required String this.clothId});

  @override
  State<ClothDetailPage> createState() => _ClothDetailPageState();
}

class _ClothDetailPageState extends State<ClothDetailPage> {

  String _pageTitle = '';
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _commentController = TextEditingController();
  Category? _category;
  Location? _location;

  @override
  void initState() {
    super.initState();

    setState(() {
      _pageTitle = widget.clothId == null ? 'New' : 'Edit'; //TODO

      if (widget.clothId != null){
        final cloth = Interactor.findClothById(widget.clothId!);

        if (cloth != null) {
          _titleController.text = cloth.title;
          _commentController.text = cloth.comment;

          _category = Interactor.findCategoryById(cloth.categoryId);
          _location = Interactor.findLocationById(cloth.locationId);
        }
      }
    });
  }

  void onImageChoose(){
    // TODO
  }

  void onSave(BuildContext context) {
    // TODO
    Navigator.pop(context);
  }

  void onDelete() {
    // TODO
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageTitle),
        actions: [
          IconButton(
              onPressed: onDelete, icon: Icon(Icons.delete_outline, color: Theme
              .of(context)
              .primaryColor,)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AspectRatio(aspectRatio: 1, child: ImagePlaceholder(onTap: onImageChoose,)),
              SizedBox(height: 16.0,),
              InputField(
                  controller: _titleController,
                  title: 'Title', // TODO
                  lines: 1),
              ItemChooser<Category>(
                title: 'Category',
                // TODO
                value: _category,
                items: Interactor.categories,
                getTitle: (cat) => cat.title,
                onChange: (cat) =>
                    setState(() {
                      _category = cat;
                    }),
              ),
              ItemChooser<Location>(
                value: _location,
                title: 'Location',
                // TODO
                items: Interactor.locations,
                getTitle: (loc) => loc.title,
                onChange: (loc) =>
                    setState(() {
                      _location = loc;
                    }),
              ),
              InputField(
                title: 'Comment', // TODO
                controller: _commentController,
                lines: 3,
              ),
            ],
          ),
        ),),
      bottomNavigationBar: OverflowBar(
        alignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () => onSave(context),
            child: Text('SAVE'), // TODO
          ),
        ],
      ),
    );
  }
}



