import 'package:vinxes_store/features/shop/models/category_model.dart';
import 'package:vinxes_store/utils/constants/image_strings.dart';

class VDummyData {
  static final List<CategoryModel> categories = [
    CategoryModel(
        id: '1', name: 'Sports', image: VImages.sportsIcon, isFeatured: true),
    CategoryModel(
        id: '2',
        name: 'Furniture',
        image: VImages.furnitureIcon,
        isFeatured: true),
    CategoryModel(
        id: '3',
        name: 'Electronics',
        image: VImages.electronicsIcon,
        isFeatured: true),
    CategoryModel(
        id: '4', name: 'Clothes', image: VImages.clothesIcon, isFeatured: true),
    CategoryModel(
        id: '5', name: 'Shoes', image: VImages.shoesIcon, isFeatured: true),
    CategoryModel(
        id: '6', name: 'Animals', image: VImages.animalIcon, isFeatured: true)
  ];
}
