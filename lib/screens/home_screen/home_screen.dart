import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_demo/constants/color_constants.dart';
import 'package:web_demo/constants/image_constants.dart';
import 'package:web_demo/screens/home_screen/widgets/content_bar.dart';
import 'package:web_demo/screens/home_screen/widgets/sidebar.dart';
import 'package:web_demo/screens/home_screen/widgets/top_bar.dart';
import 'package:web_demo/screens/order_history/order_history.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSmallerThanDeskTop =
        ResponsiveWrapper.of(context).isSmallerThan(DESKTOP);
    bool isSmallerThanTablet =
        ResponsiveWrapper.of(context).isSmallerThan(TABLET);

    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SideBar(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                TopBar(),
                OrderHistory()
              ],
            ),
          )
        ],
      ),
    );
  }
}
