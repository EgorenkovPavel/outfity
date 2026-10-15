import 'package:flutter/material.dart';
import 'package:outfity/core/photo_service.dart';

import '../../core/extensions.dart';
import '../../core/injection.dart';
import '../../l10n/app_localizations.dart';

class ImagePlaceholder extends StatelessWidget {
  final void Function()? onTap;
  final String? imagePath;

  const ImagePlaceholder({super.key, this.onTap, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: BoxBorder.all(color: Theme.of(context).primaryColor),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.camera_alt_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                  if (onTap != null)
                    Text(
                      context.loc.image_placeholder_hint,
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                ],
              ),
            ),
            if (imagePath != null)

              FutureBuilder(future: getIt<PhotoService>().getFile(imagePath),
                  builder: (context, snapshot) {
                    final file = snapshot.data;

                    if (file == null) {
                      return SizedBox();
                    } else {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.file(
                          file,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      );
                    }
                  }),
          ],
        ),
      ),
    );
  }
}
