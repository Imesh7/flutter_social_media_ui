import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/app_colors.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.white,
      leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/svg/arrow_back.svg")),
      actions: [
        IconButton(
            onPressed: () {}, icon: SvgPicture.asset("assets/svg/bell.svg"))
      ],
      title: const Text("자유톡"),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
