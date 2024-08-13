import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:styled_widget/styled_widget.dart';

class NewView extends StatefulWidget {
  const NewView({super.key});

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/lego/request_notification_permission_page_lego/notification.png'),
          Gap(20),
          Text("We need notification permission to let you know when your friends send you messages of praise or thanks")
              .textStyle(Theme.of(context).textTheme.titleLarge!)
              .textAlignment(TextAlign.center)
              .fontWeight(FontWeight.w700)
              .padding(horizontal: 20),
          Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(
                      color: Theme.of(context).textTheme.bodyMedium!.color!,
                      width: 2), // Set border color and thickness
                ),
                child: Text(
                  "Deny",
                  maxLines: 1,
                )
                    .fontWeight(FontWeight.bold)
                    .textColor(
                    Theme.of(context).textTheme.bodyMedium!.color!)
                    .padding(
                  vertical: 15,
                ),
              ).padding(vertical: 7, left: 20, right: 5).expanded(),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(
                      color: Theme.of(context).textTheme.bodyMedium!.color!,
                      width: 2), // Set border color and thickness
                ),
                child: Text(
                  "Allow",
                  maxLines: 1,
                )
                    .fontWeight(FontWeight.bold)
                    .textColor(
                    Theme.of(context).textTheme.bodyMedium!.color!)
                    .padding(
                  vertical: 15,
                ),
              )
                  .padding(
                vertical: 7,
                left: 5,
                right: 20,
              ).expanded(),
            ],
          ),
        ],
      ),
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: NewView(),
  ));
}
