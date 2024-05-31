import 'package:flutter/material.dart';
import 'package:vinxes_store/common/widgets/image_texts/vertical_image_text.dart';

import '../../../../../utils/constants/image_strings.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return VerticalImageText(
            image: VImages.shoes,
            title: "Shoes Category",
            onTap: () {},
          );
        },
      ),
    );
  }
}
