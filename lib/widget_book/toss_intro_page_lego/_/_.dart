import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_color/flutter_color.dart';
import 'package:gap/gap.dart';
import 'package:infinite_listview/infinite_listview.dart';
import 'package:june_flow_util/june_flow_util.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:tuple/tuple.dart';

class NewView extends StatefulWidget {
  const NewView({super.key});

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  List<Tuple3<String, String, String>> introData = [
    Tuple3("assets/lego/toss_intro_page_lego/money.png",
        "${"Hidden insurance"}\n${"Find"}", ""),
    Tuple3("assets/lego/toss_intro_page_lego/money.png",
        "${"Lifetime"}\n${"Free remittance"}", ""),
    Tuple3("assets/lego/toss_intro_page_lego/hospital.png",
        "${"Medical expenses"}\n${"Get refunded"}", ""),
    Tuple3("assets/lego/toss_intro_page_lego/vaccine.png",
        "${"Free"}\n${"Vaccine insurance"}", ""),
    Tuple3("assets/lego/toss_intro_page_lego/money.png",
        "${"Government subsidy"}\n${"Find"}", ""),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Gap(60),
          Text("Everything about finance")
              .textStyle(Theme.of(context).textTheme.headlineLarge!)
              .fontWeight(FontWeight.bold),
          Text("Easily with Toss")
              .textStyle(Theme.of(context).textTheme.headlineLarge!)
              .fontWeight(FontWeight.bold),
          const Spacer(
            flex: 5,
          ),
          Container(
            height: 235,
            width: double.infinity,
            child: Stack(
              children: [
                FlowListView(
                  padding: 5,
                  itemWidget: (index) {
                    // return TossIntroStyleItem1(
                    //   context,
                    //   imageProvider: MyImageProvider1(
                    //       assetPath:
                    //       introData[index % introData.length].item1),
                    //   title: introData[index % introData.length].item2,
                    //   subTitle: introData[index % introData.length].item3,
                    // );
                    //
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Gap(5),
                        // fit: BoxFit.contain
                        Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  introData[index % introData.length].item1),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        // MyImage1(
                        //     imageProvider: imageProvider,
                        //     borderRadius: 10,
                        //     h: 100,
                        //     w: 120,
                        //     fit: BoxFit.contain),
                        Gap(20),
                        AutoSizeText(
                          introData[index % introData.length].item2,
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          introData[index % introData.length].item3,
                        )
                            .textColor(Colors.grey)
                            .fontWeight(FontWeight.bold)
                            .textAlignment(TextAlign.center)
                            .textStyle(Theme.of(context).textTheme.bodyLarge!),
                        Gap(5),
                      ],
                    ).padding(horizontal: 10).height(223).width(180).decorated(
                        borderRadius: BorderRadius.circular(20),
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.dark
                            ? Theme.of(context)
                                .scaffoldBackgroundColor
                                .lighter(3)
                            : Theme.of(context).scaffoldBackgroundColor);
                  },
                  modeSpeed: 45,
                  axis: Axis.horizontal,
                  w: double.infinity,
                  h: 235,
                ),
                Container().height(235).width(double.infinity).decorated(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Theme.of(context).scaffoldBackgroundColor,
                        Theme.of(context)
                            .scaffoldBackgroundColor
                            .withOpacity(0.65),
                        Theme.of(context)
                            .scaffoldBackgroundColor
                            .withOpacity(0),
                        Theme.of(context)
                            .scaffoldBackgroundColor
                            .withOpacity(0),
                        Theme.of(context)
                            .scaffoldBackgroundColor
                            .withOpacity(0),
                        Theme.of(context)
                            .scaffoldBackgroundColor
                            .withOpacity(0.65),
                        Theme.of(context).scaffoldBackgroundColor,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(0)),
              ],
            ),
          ),
          const Spacer(
            flex: 4,
          ),
          OutlinedButton(
            onPressed: () {
              print("clicked");
            },
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              side: BorderSide(
                  color: Theme.of(context).textTheme.bodyMedium!.color!,
                  width: 2), // 테두리 색상과 두께 설정
            ),
            child: Text("Get started")
                .fontWeight(FontWeight.bold)
                .textColor(Theme.of(context).textTheme.bodyMedium!.color!)
                .padding(vertical: 15, horizontal: 20),
          )
              .padding(
                horizontal: 20,
                vertical: 7,
              )
              .width(double.infinity),
          // }, width: 0.85.sw, height: 60, borderRadius: 15),
          Gap(20),
        ],
      ),
      floatingActionButton: FloatingActionButtonKit(),
    );
  }
}

class FlowListView extends StatefulWidget {
  FlowListView(
      {super.key,
      required this.itemWidget,
      this.padding,
      this.modeSpeed,
      this.axis,
      this.h = 0,
      this.w = 0,
      this.reverseAnimationFlow = false});

  final Widget Function(int) itemWidget;
  final double? padding;
  final double? modeSpeed;
  final Axis? axis; //가로 리스트뷰인지, 세로 리스트뷰인지 설정 ex) Axis.vertical,horizontal
  final double h;
  final double w;
  final bool reverseAnimationFlow;

  @override
  State<FlowListView> createState() => _FlowListViewState();
}

class _FlowListViewState extends State<FlowListView> {
  late Timer _timer;
  final InfiniteScrollController _scrollController = InfiniteScrollController();

  @override
  void initState() {
    _timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      // myLogger(timer.tick.toString());

      _scrollController.animateTo(
        _scrollController.offset +
            ((widget.modeSpeed ?? 40) *
                ((widget.reverseAnimationFlow) ? -1 : 1)),
        duration: const Duration(milliseconds: 1000),
        curve: Curves.linear,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InfiniteListView.builder(
        scrollDirection: widget.axis ?? Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        controller: _scrollController,
        // padding: myEdgeAll(widget.padding ?? 8),
        // itemCount: widget.itemLength, //실제 데이터로 object.length 길이를 넣어줍니다.
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(widget.padding ?? 8.0),
            child: widget.itemWidget(index),
          );
        }).height(widget.h).width(widget.w);
  }
}

main() async {
  return runApp(MaterialApp(
    home: NewView(),
  ));
}
