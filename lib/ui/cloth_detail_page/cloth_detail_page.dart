import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:outfity/domain/models.dart';
import 'package:outfity/ui/cloth_detail_page/cloth_detail_bloc.dart';

import '../shared/image_placeholder.dart';
import 'widgets/input_field.dart';
import 'widgets/item_chooser.dart';

class ClothDetailPage extends StatefulWidget {

  const ClothDetailPage({super.key});

  @override
  State<ClothDetailPage> createState() => _ClothDetailPageState();
}

class _ClothDetailPageState extends State<ClothDetailPage> {

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _commentController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }


  @override
  void dispose() {
    _titleController.dispose();
    _commentController.dispose();
    super.dispose();
  }

  void onImageChoose(BuildContext context) {
    final picker = ImagePicker(); // TODO in di
    showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text('Take photo'), // TODO
                onTap: () async {
                  Navigator.pop(context);


                  final image = await picker.pickImage(
                    source: ImageSource.camera,
                  );

                  if (image != null) {
                    // TODO: сохранить выбранное изображение
                  }
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Choose from gallery'), // TODO
                onTap: () async {
                  Navigator.pop(context);
                  final image = await picker.pickImage(
                    source: ImageSource.gallery,
                  );

                  if (image != null) {
                    // TODO: сохранить выбранное изображение
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> onAddCategory() async {
    final categoryName = await showAddCategoryDialog(
        context, title: 'New category', hint: 'Category name');

    if (categoryName != null) {
      context.read<ClothDetailBloc>().add(ClothDetailEvent.saveCategory(title: categoryName));
    }
  }

  Future<void> onAddLocation() async {
    final locationName = await showAddCategoryDialog(
        context, title: 'New location', hint: 'Location name');

    if (locationName != null) {
      context.read<ClothDetailBloc>().add(ClothDetailEvent.saveLocation(title: locationName));
    }
  }

  Future<String?> showAddCategoryDialog(BuildContext context,
      {required String title,
        required String hint,}) async {
    final controller = TextEditingController();

    final result = await showDialog<String>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: TextField(
            controller: controller,
            autofocus: true,
            maxLength: 30,
            decoration: InputDecoration(
              hintText: hint,
            ),
            textCapitalization: TextCapitalization.sentences,
            onSubmitted: (value) {
              final name = value.trim();

              if (name.isNotEmpty) {
                Navigator.pop(context, name);
              }
            },
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel' // TODO
              ),
            ),
            FilledButton(
              onPressed: () {
                final name = controller.text.trim();

                if (name.isNotEmpty) {
                  Navigator.pop(context, name);
                }
              },
              child: const Text('Add' // TODO
              ),
            ),
          ],
        );
      },
    );

    // controller.dispose();

    return result;
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
        title: Text(context
            .watch<ClothDetailBloc>()
            .state
            .pageTitle),
        actions: [
          IconButton(
              onPressed: onDelete,
              icon: Icon(Icons.delete_outline,
                color: Theme
                    .of(context)
                    .primaryColor,)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AspectRatio(aspectRatio: 1,
                  child: ImagePlaceholder(
                    onTap: () => onImageChoose(context),)),
              SizedBox(height: 16.0,),
              InputField(
                  controller: _titleController,
                  title: 'Title', // TODO
                  lines: 1),
              ItemChooser<Category>(
                title: 'Category',
                // TODO
                value: context
                    .watch<ClothDetailBloc>()
                    .state
                    .category,
                items: context.watch<ClothDetailBloc>().state.categories,
                getTitle: (cat) => cat.title,
                onChange: (cat) =>
                    context.read<ClothDetailBloc>().add(
                        ClothDetailEvent.changeCategory(category: cat)),
                onAdd: onAddCategory,
              ),
              ItemChooser<Location>(
                value: context
                    .watch<ClothDetailBloc>()
                    .state
                    .location,
                title: 'Location',
                // TODO
                items: context.watch<ClothDetailBloc>().state.locations,
                getTitle: (loc) => loc.title,
                onChange: (loc) =>
                    context.read<ClothDetailBloc>().add(
                        ClothDetailEvent.changeLocation(location: loc)),
                onAdd: onAddLocation,
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




