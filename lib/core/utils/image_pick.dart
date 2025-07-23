// import 'package:asroo_store/core/di/injection_container.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:permission_handler/permission_handler.dart';

// class PickImageUtils {
//   factory PickImageUtils() {
//     return _instance;
//   }
//   const PickImageUtils._();
//   static const PickImageUtils _instance = PickImageUtils._();

//   Future<XFile?> pickImage() async {
//     try {
//       final image = await ImagePicker().pickImage(
//         source: ImageSource.gallery,
//         imageQuality: 10,
//       );
//       if (image != null) {
//         return XFile(image.path);
//       }
//       return null;
//     }on Exception catch (e) {
//       final permissionStatus = await Permission.photos.status;

//       if (permissionStatus.isDenied) {
//         //Show Dialog
//         await _showAlertPermissionsDialog();
//       } else {
//         debugPrint('Image Exception $e');
//       }
//     }
//     return null;
//   }

//   Future<void> _showAlertPermissionsDialog() {
//     return showCupertinoDialog(
//       context: sl<GlobalKey<NavigatorState>>().currentState!.context,
//       builder: (context) {
//         return CupertinoAlertDialog(
//           title: const Text('Permissions Denied'),
//           content: const Text('Allow to access camera and photos'),
//           actions: <CupertinoDialogAction>[
//             CupertinoDialogAction(
//               onPressed: () => Navigator.of(context).pop(),
//               child: const Text('Cancel'),
//             ),
//             const CupertinoDialogAction(
//               onPressed: openAppSettings,
//               isDefaultAction: true,
//               child: Text('Settings'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
