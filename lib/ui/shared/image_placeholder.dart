import 'package:flutter/material.dart';

class ImagePlaceholder extends StatelessWidget {
  final void Function()? onTap;

  const ImagePlaceholder({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: BoxBorder.all(color: Theme.of(context).primaryColor),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.camera_alt_outlined,
                color: Theme.of(context).primaryColor,
              ),
              if (onTap != null)
                Text(
                  'Tap to choose image', // TODO
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
