import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:web_demo/constants/color_constants.dart';
import 'package:web_demo/constants/image_constants.dart';
import 'package:web_demo/constants/layout_constants.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSmallerThanDeskTop =
        ResponsiveWrapper.of(context).isSmallerThan(DESKTOP);
    bool isSmallerThanTablet =
        ResponsiveWrapper.of(context).isSmallerThan(TABLET);

    return Container(
      width: 300,
      padding: const EdgeInsets.symmetric(
          horizontal: LayoutConstants.horizontalWidth),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
            child: Row(
              children: [
                Text(
                  "eb",
                  style: Theme.of(context).textTheme.headline4,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: FaIcon(
                    FontAwesomeIcons.utensils,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                Text(
                  "zz",
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  " food",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Theme.of(context).colorScheme.secondary
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: const BoxDecoration(
                border: Border(
                    // left: BorderSide(color: ColorConstants.accentColor,width: 5)
                )
            ),
            child: Container(
              padding: itemPadding(),
              child: Row(
                children: [
                  const Icon(
                    Icons.dashboard,
                    color: ColorConstants.swatch4,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Live Orders",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: ColorConstants.swatch4),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(color: ColorConstants.accentColor,width: 5)
              )
            ),
            child: Container(
              padding: itemPadding(),
              decoration: const BoxDecoration(
                color: ColorConstants.lightOrange,
                borderRadius: BorderRadius.only(topRight: Radius.circular(12),bottomRight: Radius.circular(12)),
              ),
              child: Row(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.firstOrder,
                    color: ColorConstants.accentColor,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Order History",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: ColorConstants.accentColor),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                border: Border(
                    // left: BorderSide(color: ColorConstants.accentColor,width: 5)
                )
            ),
            child: Container(
              padding: itemPadding(),
              child: Row(
                children: [
                  const Icon(
                    Icons.branding_watermark,
                    color: ColorConstants.swatch4,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Brands",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: ColorConstants.swatch4),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                border: Border(
                    // left: BorderSide(color: ColorConstants.accentColor,width: 5)
                )
            ),
            child: Container(
              padding: itemPadding(),
              child: Row(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.productHunt,
                    color: ColorConstants.swatch4,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Products",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: ColorConstants.swatch4),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                border: Border(
                    // left: BorderSide(color: ColorConstants.accentColor,width: 5)
                )
            ),
            child: Container(
              padding: itemPadding(),
              child: Row(
                children: [
                  const Icon(
                    Icons.settings,
                    color: ColorConstants.swatch4,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Settings",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: ColorConstants.swatch4),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  EdgeInsets itemPadding() => const EdgeInsets.symmetric(horizontal: 60, vertical: 20);
}
