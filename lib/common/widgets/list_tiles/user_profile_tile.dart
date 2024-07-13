import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/v_circular_image.dart';

class VUserProfileTile extends StatelessWidget {
  const VUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const VCircularImage(
        image: VImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text('Vinxes III',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: VColors.white)),
      subtitle: Text('Vinxes@gmail.com',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: VColors.white)),
      trailing: IconButton(onPressed: () {}, icon: const Icon(Iconsax.edit)),
    );
  }
}
