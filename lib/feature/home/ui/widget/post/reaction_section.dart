import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../utils/components/icon_with_text.dart';

class ReactionButtonWidget extends StatelessWidget {
  const ReactionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 56,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconWithText(
                    iconData: SvgPicture.asset(
                      'assets/svg/heart.svg',
                    ),
                    iconText: '5',
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  IconWithText(
                    iconData: SvgPicture.asset('assets/svg/bookmark.svg'),
                    iconText: '5',
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  IconWithText(
                    iconData: SvgPicture.asset('assets/svg/talke.svg'),
                    iconText: '',
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  IconWithText(
                    iconData: SvgPicture.asset(
                      'assets/svg/more.svg',
                    ),
                    iconText: '',
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
