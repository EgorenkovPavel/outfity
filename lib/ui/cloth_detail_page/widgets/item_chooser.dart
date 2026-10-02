import 'package:flutter/material.dart';

class ItemChooser<T> extends StatelessWidget {
  final T? value;
  final String title;
  final List<T> items;
  final String Function(T) getTitle;
  final void Function(T?) onChange;

  const ItemChooser({
    super.key,
    required this.value,
    required this.title,
    required this.onChange,
    required this.items,
    required this.getTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(color: Theme.of(context).primaryColor)),
        DropdownButton<T?>(
          style: TextStyle(color: Colors.black),
          underline: const SizedBox.shrink(),
          value: value,
          items:
              items
                  .map<DropdownMenuItem<T?>>(
                    (e) =>
                        DropdownMenuItem<T>(value: e, child: Text(getTitle(e))),
                  )
                  .toList()
                ..insert(
                  0,
                  DropdownMenuItem(
                    value: null,
                    child: Text(
                      'Not selected', //TODO
                    ),
                  ),
                ),
          onChanged: onChange,
        ),
      ],
    );
  }
}
