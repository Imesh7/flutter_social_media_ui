import 'package:flutter/material.dart';
import 'package:flutter_social_media_ui/utils/theme/app_colors.dart';
import 'package:flutter_svg/svg.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/avatar.png"),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "안녕 나 응애 ",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontFamily: 'Noto Sans',
                          color: const Color(0xFF1C222B)),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    SvgPicture.asset("assets/svg/verify.svg"),
                    const SizedBox(
                      width: 4,
                    ),
                    Text("1일전",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontFamily: 'Noto Sans',
                              color: const Color(0xFF909DB5),
                              letterSpacing: -0.10,
                            )),
                  ],
                ),
                Row(
                  children: [
                    Text('165cm',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontFamily: 'Roboto',
                              color: Color(0xFF909DB5),
                              fontWeight: FontWeight.w400,
                            ) 
                        ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      width: 2,
                      height: 2,
                      decoration: const ShapeDecoration(
                        color: Color(0xFF909DB5),
                        shape: OvalBorder(),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '53kg',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF909DB5),
                          ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: 58,
            height: 28,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: ShapeDecoration(
              color: AppColor.buttonGreen,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(999),
              ),
            ),
            child: Text(
              '팔로우',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  letterSpacing: -0.12,
                  fontFamily: 'Noto Sans',
                  color: AppColor.white),
            ),
          )
        ],
      ),
    );
  }
}
