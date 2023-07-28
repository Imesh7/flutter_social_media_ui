import 'package:flutter/material.dart';
import 'package:flutter_social_media_ui/feature/home/ui/widget/post/post_body.dart';
import 'package:flutter_social_media_ui/feature/home/ui/widget/post/post_header.dart';
import 'package:flutter_social_media_ui/feature/home/ui/widget/post/reaction_section.dart';

import 'comment/comment_widget.dart';
import 'image_carousel_slider.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({super.key});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          PostHeader(),
          PostBody(),
          ImageCarouselSlider(
            itemList: [1, 2, 3, 4, 5],
          ),
          ReactionButtonWidget(),
          Divider(),
          CommentWidget(),
        ],
      ),
    );
  }
}
