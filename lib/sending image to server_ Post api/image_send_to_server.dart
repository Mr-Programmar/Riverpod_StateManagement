import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class ImageScreen extends HookConsumerWidget {
  ImageScreen({super.key});
  final ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ValueNotifier<File?> selectedImage = useState<File?>(null);
    return Scaffold(
      body: GestureDetector(
        onDoubleTap: () async {
          print("ontap");
          final galleryChosenImage =
              await picker.pickImage(source: ImageSource.gallery);
          print('${galleryChosenImage?.path}');
          if (galleryChosenImage != null) {
            selectedImage.value = File(galleryChosenImage.path);
          }
        },
        child: Container(
          decoration: BoxDecoration(
            image: selectedImage.value != null
                ? DecorationImage(
                    image: FileImage(
                        selectedImage.value!), // Display the selected image
                    fit: BoxFit.contain,
                  )
                : DecorationImage(
                    image: AssetImage(
                        "images/splash.png"), // Display the selected image
                    fit: BoxFit.contain,
                  ), // Set the image to null if no image is selected
          ),
        ),
      ),
    );
  }
}
//d
