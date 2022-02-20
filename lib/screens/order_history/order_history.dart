import 'package:flutter/material.dart';
import 'package:web_demo/constants/color_constants.dart';
import 'package:web_demo/screens/home_screen/widgets/content_bar.dart';
import 'package:web_demo/screens/order_history/tabs/all_order_tab.dart';
import 'package:web_demo/screens/order_history/tabs/canceled_tab.dart';
import 'package:web_demo/screens/order_history/tabs/completed_tab.dart';
import 'package:web_demo/screens/order_history/tabs/summary_tab.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return ContentBar(
      title: "Order History",
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabBar(
            isScrollable: true,
            indicatorWeight: 3,
            indicatorColor: ColorConstants.accentColor,
            unselectedLabelColor: ColorConstants.swatch6,
            labelColor: ColorConstants.accentColor,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
            labelPadding: const EdgeInsets.symmetric(horizontal: 25),
            labelStyle: Theme.of(context).textTheme.bodyText1,
            tabs: const [
              Tab(
                text: 'All Order',
              ),
              Tab(
                text: 'Summary',
              ),
              Tab(
                text: 'Completed',
              ),
              Tab(
                text: 'Cancelled',
              ),
            ],
            controller: tabController,
          ),
          Expanded(
            child: TabBarView(
              children: const [
                AllOrderTab(),
                SummaryTab(),
                CanceledTab(),
                CompletedTab()
              ],
              controller: tabController,
            ),
          )
        ],
      ),
    );
  }
}
