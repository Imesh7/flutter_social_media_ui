import 'package:flutter/material.dart';
import 'package:flutter_social_media_ui/feature/home/ui/widget/post/post_widget.dart';

import '../../../utils/components/app_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [PostWidget()],
        ),
      ),
    );
  }
}
