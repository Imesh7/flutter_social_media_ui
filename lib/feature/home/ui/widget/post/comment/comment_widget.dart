import 'package:flutter/material.dart';
import 'package:flutter_social_media_ui/feature/home/ui/widget/post/comment/post_comment_widget.dart';
import 'package:flutter_social_media_ui/feature/home/ui/widget/post/comment/post_reply_comment_widget.dart';

import 'add_comment_widget.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PostCommentWidget(),
          PostReplyCommentWidget(),
          AddCommentWidget()
        ],
      ),
    );
  }
}
