import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserHeaderWidget extends StatelessWidget {
  final String userImageAssetsPath;
  final String userName;
  final String userSubText;

  const UserHeaderWidget(
      {super.key,
      required this.userImageAssetsPath,
      required this.userName,
      required this.userSubText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 34,
          width: 34,
          child: CircleAvatar(
            backgroundImage: AssetImage(userImageAssetsPath),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Row(
            children: [
              Text(userName,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: const Color(0xFF1C222B),
                        fontFamily: 'Noto Sans',
                      )),
              const SizedBox(
                width: 4,
              ),
              SvgPicture.asset("assets/svg/verify.svg"),
              const SizedBox(
                width: 4,
              ),
              Text(userSubText,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: const Color(0xFF909DB5),
                        fontFamily: 'Noto Sans',
                        letterSpacing: -0.10,
                      )),
            ],
          ),
        ),
        const Icon(Icons.more_horiz)
      ],
    );
  }
}
