import 'package:flutter/material.dart';
import 'package:web_demo/constants/color_constants.dart';

class ContentBar extends StatelessWidget {

  final String title;
  final Widget body;

  const ContentBar({Key? key,required this.title, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 25,right: 25,top: 25),
        padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 20),
        decoration: const BoxDecoration(
          color: ColorConstants.contentBack,
          borderRadius: BorderRadius.all(
            Radius.circular(22),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            Text(title,style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.w900),),
            const SizedBox(height: 20,),
            Expanded(child: body)
          ],
        ),
      ),
    );
  }
}
