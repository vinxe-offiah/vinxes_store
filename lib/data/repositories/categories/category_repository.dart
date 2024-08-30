import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vinxes_store/features/shop/models/category_model.dart';
import 'package:vinxes_store/utils/Firebase_services/firebase_storage_service.dart';
import 'package:vinxes_store/utils/exceptions/firebase_exceptions.dart';
import 'package:vinxes_store/utils/exceptions/platform_exceptions.dart';

class CategoryRepository extends GetxController {
  static CategoryRepository get instance => Get.find();

  // Variables
  final _db = FirebaseFirestore.instance;

  /// Get all categories
  Future<List<CategoryModel>> getAllCategories() async {
    try {
      final snapshot = await _db.collection('Categories').get();
      final list = snapshot.docs
          .map((document) => CategoryModel.fromSnapshot(document))
          .toList();
      return list;
    } on FirebaseException catch (e) {
      throw VFirebaseException(e.code).message;
    } on PlatformException catch (e) {
      throw VPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  /// get Sub Categories

  /// Upload Categories to the Cloud Firebase
  Future<void> uploadDummyData(List<CategoryModel> categories) async {
    try {
      // Upload all the categories along with their Images
      final storage = Get.put(VFirebaseStorageService());

      // Loop through each category
      for (var category in categories) {
        // Get ImageData link from local assets
        final file = await storage.getImageDataFromAssets(category.image);

        // Upload image and get its url
        final url =
            await storage.uploadImageData('Categories', file, category.name);

        // assign url to category.image attribute
        category.image = url;

        // Store Category in Firestore
        await _db
            .collection('Categories')
            .doc(category.id)
            .set(category.toJson());
      }
    } on FirebaseException catch (e) {
      throw VFirebaseException(e.code).message;
    } on PlatformException catch (e) {
      throw VPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
}
