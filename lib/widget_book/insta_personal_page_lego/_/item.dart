import 'package:flutter/material.dart';

import '../../../main.dart';

class ItemView extends StatefulWidget {
  const ItemView({super.key});

  @override
  State<ItemView> createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                // avatar
                Gap(2),
                CircleAvatar(
                  radius: 20,
                  backgroundImage:
                  AssetImage('assets/lego/insta_personal_page_lego/winter.jpg'),
                ),
                Gap(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name")
                        .textStyle(Theme.of(context).textTheme.bodyMedium!)
                        .fontWeight(FontWeight.bold),
                    Gap(2),
                    Text("Recipient's  Name")
                        .textStyle(Theme.of(context).textTheme.labelMedium!)
                        .opacity(0.6),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Text("Hours Ago")
                    .textStyle(Theme.of(context).textTheme.bodyMedium!)
                    .opacity(0.6),
                Gap(10),
                Icon(Icons.more_horiz)
              ],
            )
          ],
        ),
        Gap(10),
        Text("Write down the contents in detail, write down the contents in detail, write down the contents in detail, write down the contents, write down the contents in detail, write down the contents in detail, write down the contents in detail, write down the contents in detail, write down the contents in detail, write down the contents in detail")
            .textStyle(Theme.of(context).textTheme.bodyLarge!),
        // 이거 사이에 틈을 주고싶음
        ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/lego/insta_personal_page_lego/winter.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ).paddingDirectional(end: 10);
            }).height(100).padding(top: 15, bottom: 5),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // CircleAvatar(
            //   radius: 20,
            //   backgroundImage: AssetImage(Assets.image.iu.path),
            // ),
            // Gap(10),
            RichText(
              text: TextSpan(
                text: "Name",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text:
                    " Write down in detail the contents about gratitude, write down in detail, apply the contents in detail, apply the contents in detail, write down in detail, apply the contents in detail",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.normal,
                        color: Theme.of(context).textTheme.bodyMedium!.color),
                  ),
                  TextSpan(
                    text: " 3 Hours", // 시간을 나타내는 부분
                    style: Theme.of(context).textTheme.bodyMedium!,
                  ).textColor(Colors.grey),
                ],
              ),
            ).expanded(),
          ],
        ).padding(vertical: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.favorite_border,
              size: 35,
            ),
            Gap(20),
            SvgPicture.asset("assets/lego/insta_personal_page_lego/chat.svg",
                width: 31, height: 31),
          ],
        ),
        // Gap(8),

        Gap(5),
        // Divider(
        //   color: Colors.grey,
        // ),
      ],
    ).padding(bottom: 20);
  }
}
