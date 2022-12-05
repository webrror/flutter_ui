import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Youtube%20UI/data/data.dart';

import '../widgets/videocard.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videos.length,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(bottom: 20),
      itemBuilder: (context, index) {
        return VideoCard(
          index: index,
        );
      },
    );
  }
}
