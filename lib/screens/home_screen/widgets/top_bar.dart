import 'package:flutter/material.dart';
import 'package:web_demo/constants/color_constants.dart';
import 'package:web_demo/constants/image_constants.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              cursorColor: ColorConstants.darkColor,
              decoration: InputDecoration(
                border: searchTextBorder(),
                enabledBorder: searchTextBorder(),
                focusedBorder: searchTextBorder(),
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Icon(
                    Icons.search,
                    color: ColorConstants.darkColor,
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                hintText: "Search",
              ),
            ),
            flex: 1,
          ),
          const Expanded(
            flex: 3,
            child: SizedBox(),
          ),
          Row(
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  image: DecorationImage(
                    image: AssetImage(ImageConstants.face1),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                "Ebizz Admin",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const Icon(Icons.keyboard_arrow_down)
            ],
          ),
          const SizedBox(width: 30,),
        ],
      ),
    );
  }

  OutlineInputBorder searchTextBorder() {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(12),
      ),
      borderSide: BorderSide(
          color: ColorConstants.greyColor.withOpacity(0.5), width: 2),
    );
  }
}
