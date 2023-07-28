import 'package:flutter/material.dart';

class PostBody extends StatelessWidget {
  const PostBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: const Color(0xFF1C222B),
                  fontFamily: 'Noto Sans',
                  letterSpacing: -0.14,
                ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
                '지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~\n혹시 어떤 상품이 제일 괜찮았어? \n\n후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 \n제일 재밌었다던데 맞아???\n\n올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가\n아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에\n있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 12,
                      color: const Color(0xFF303A49),
                      fontFamily: 'Noto Sans',
                      letterSpacing: -0.12,
                      fontWeight: FontWeight.w500,
                    )),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Wrap(
              spacing: 8,
              children:
                  ["#2023", "#TODAYISMONDAY", "TOP", "#POPS!", "#WOW!", "#ROW!"]
                      .map((e) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Container(
                              decoration: ShapeDecoration(
                                color: const Color(0xFFF7F8FA),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 0.25, color: Color(0xFFCED3DE)),
                                  borderRadius: BorderRadius.circular(999),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 5),
                                child: Text(
                                  e,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        fontFamily: 'Roboto',
                                        color: const Color(0xFF596A86),
                                      ),
                                ),
                              ),
                            ),
                          ))
                      .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
