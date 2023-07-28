import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../utils/components/icon_with_text.dart';
import '../../../../../../utils/components/user_header_widget.dart';

class PostCommentWidget extends StatelessWidget {
  const PostCommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UserHeaderWidget(
          userImageAssetsPath: 'assets/images/avatar.png',
          userName: '안녕 나 응애 ',
          userSubText: '1일전',
        ),
        Padding(
          padding: const EdgeInsets.only(left: 42),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도\n아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다 괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니 꼭 봐주세용~!',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      letterSpacing: -0.12,
                      color: const Color(0xFF303A49),
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w400,
                    ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconWithText(
                      iconData: SvgPicture.asset('assets/svg/heart.svg'),
                      iconText: '5'),
                  const SizedBox(
                    width: 8,
                  ),
                  IconWithText(
                      iconData: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: SvgPicture.asset('assets/svg/talke.svg'),
                      ),
                      iconText: '5'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
