import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddCommentWidget extends StatelessWidget {
  const AddCommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Container(
        padding: const EdgeInsets.only(
          top: 8,
          left: 16,
          right: 16,
          bottom: 10,
        ),
        decoration: const BoxDecoration(
          border: Border(
            left: BorderSide(color: Color(0xFFF7F8FA)),
            top: BorderSide(width: 0.50, color: Color(0xFFD9D9D9)),
            right: BorderSide(color: Color(0xFFF7F8FA)),
            bottom: BorderSide(color: Color(0xFFF7F8FA)),
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset("assets/svg/image.svg"),
            const SizedBox(width: 16),
            Expanded(
                child: Text('댓글을 남겨주세요.',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: const Color(0xFFAFB8C9),
                          fontSize: 12,
                          fontFamily: 'Noto Sans',
                          letterSpacing: -0.12,
                        ))),
            const SizedBox(width: 16),
            Text('등록',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      fontFamily: 'Noto Sans',
                      color: const Color(0xFF909DB5),
                      letterSpacing: -0.12,
                    )),
          ],
        ),
      ),
    );
  }
}
