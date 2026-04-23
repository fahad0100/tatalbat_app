import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  Future<XFile?> loadImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final response = await picker.pickImage(
      source: .gallery,
      imageQuality: 70,
      maxHeight: 460,
      maxWidth: 420,
    );
    if (response?.path == null) {
      return null;
    }

    return response!;
  }

  loadImageFromCamera() {}

  loadMuiltImagesFromGallery() {}
}
