import 'package:flutter/material.dart';

import '../../../../../../../../../../../main.dart';

class ItemView extends StatefulWidget {
  ItemView({
    super.key,
    required this.iconUrl,
    required this.websiteName,
    required this.websiteUrl,
    required this.title,
    required this.description,
    required this.date,
  });

  final String iconUrl;
  final String websiteName;
  final String websiteUrl;
  final String title;
  final String description;
  final DateTime date;

  @override
  State<ItemView> createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 1,
          width: double.infinity,
          color: Colors.grey.withOpacity(0.2),
        ),
        Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey, // Here the color of the border is specified.
                        width: 1, // The thickness of the border is specified.
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      // This value must be given as the radius of the image to appear circular.
                      child: (widget.iconUrl == 'sample')
                          ? Image.asset(
                        'assets/lego/google_search_result_page_lego/favicon.webp',
                        width: 35,
                        height: 35,
                        fit: BoxFit.cover, // The image is adjusted to fit the container size.
                      )
                          : Image.network(
                        widget.iconUrl,
                        width: 35,
                        height: 35,
                        fit: BoxFit.cover, // The image is adjusted to fit the container size.
                      ),
                    ),
                  ),
                  Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.websiteName, style: Theme.of(context).textTheme.bodyLarge!),
                      Text(widget.websiteUrl, style: Theme.of(context).textTheme.bodySmall).opacity(0.8)
                    ],
                  ).expanded(),
                  Icon(Icons.more_horiz),
                ],
              ),
              Gap(10),
              Text(
                widget.title,
                style: Theme.of(context).textTheme.headlineSmall,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ).textColor(Colors.blueAccent.withOpacity(0.9)),
              Gap(10),
              Text(
                "${widget.date.year}.${widget.date.month}.${widget.date.day} - ${widget.description}",
                style: Theme.of(context).textTheme.bodyLarge,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ).opacity(0.7),
            ],
          ).padding(horizontal: 20, top: 15, bottom: 10),
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: Colors.grey.withOpacity(0.2),
        ),
        Gap(7),
      ],
    );
  }
}

main() async {
  return buildApp(home: ItemView(
    iconUrl:
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUzheY-vg34-kp6oq-jMdEyFHpBNPt7bqsaaoVGWJYHhjrKz_b3UIkNKYDAg&s",
    websiteName: "Google",
    websiteUrl: "https://www.google.com",
    title: "This is the official homepage of Google.",
    description: "Google website description",
    date: DateTime(2024, 5, 1),
  ));
}
