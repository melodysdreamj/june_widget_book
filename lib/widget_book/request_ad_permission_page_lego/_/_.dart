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
          Gap(0),
          Column(
            children: [
              Image.asset("assets/lego/request_ad_permission_page_lego/ad.png"),
              Gap(20),
              Text("We need permission to provide you with personalized content")
                  .textStyle(Theme.of(context).textTheme.titleLarge!)
                  .textAlignment(TextAlign.center)
                  .fontWeight(FontWeight.w700)
                  .padding(horizontal: 20),
              Gap(20),
            ],
          ),
          Gap(20),
          Column(
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
                child: Text("Deny")
                    .fontWeight(FontWeight.bold)
                    .textColor(
                    Theme.of(context).textTheme.bodyMedium!.color!)
                    .padding(vertical: 15, horizontal: 20),
              )
                  .padding(
                horizontal: 30,
              )
                  .width(double.infinity),
              Gap(10),
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
                child: Text("Allow")
                    .fontWeight(FontWeight.bold)
                    .textColor(
                    Theme.of(context).textTheme.bodyMedium!.color!)
                    .padding(vertical: 15, horizontal: 20),
              )
                  .padding(
                horizontal: 30,
              )
                  .width(double.infinity),
              Gap(20),
            ],
          )
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
