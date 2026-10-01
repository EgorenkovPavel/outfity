import 'package:flutter/material.dart';
import 'package:outfity/domain/interactor.dart';
import 'package:outfity/domain/models.dart';

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
      _pageTitle = widget.clothId == null ? 'New' : 'Edit';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageTitle),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.delete_outline)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: [
            AspectRatio(aspectRatio: 1, child: Placeholder()),
            SizedBox(height: 16.0,),
            TextField(controller: _titleController,
              decoration: new InputDecoration(
                focusedBorder: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
                labelText: 'Title',
              ),),
            DropdownButton<Category?>(
              value: _category,
              items: Interactor.categories
                  .map(
                    (e) => DropdownMenuItem<Category>(
                      value: e,
                      child: Text(e.title),
                    ),
                  )
                  .toList(),
              onChanged: (category) {setState(() {
                _category = category;
              });},
            ),
            DropdownButton<Location?>(
              value: _location,
              items: Interactor.locations
                  .map(
                    (e) => DropdownMenuItem<Location>(
                      value: e,
                      child: Text(e.title),
                    ),
                  )
                  .toList(),
              onChanged: (location) {
                setState(() {
                  _location = location;
                });
              },
            ),
            TextField(controller: _commentController,
            minLines: 3,
              maxLines: 3,
              decoration: new InputDecoration(
                focusedBorder: OutlineInputBorder(
                  //borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                ),
                enabledBorder: OutlineInputBorder(
                  // borderSide: BorderSide(color: Colors.red, width: 5.0),
                ),
                labelText: 'Comment',
                alignLabelWithHint: true
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: OverflowBar(
        alignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('SAVE'),
          ),
        ],
      ),
    );
  }
}
