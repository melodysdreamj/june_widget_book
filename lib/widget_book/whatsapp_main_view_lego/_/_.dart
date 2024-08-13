import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:styled_widget/styled_widget.dart';

import 'call.dart';
import 'chat.dart';
import 'status.dart';

class NewView extends StatefulWidget {
  const NewView({super.key});

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> with SingleTickerProviderStateMixin {
  final TrackingScrollController scrollController = TrackingScrollController();
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this, initialIndex: 1);
    controller.index = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF285C55),
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Padding(
            padding: EdgeInsets.all(0),
            child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    PreferredSize(
                      preferredSize: Size.fromHeight(50.0),
                      child: SliverAppBar(
                        actions: [
                          Container(
                            padding: EdgeInsets.only(right: 20),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 15),
                                Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          )
                        ],
                        centerTitle: false,
                        // `title`을 왼쪽으로 정렬하기 위해 추가된 속성
                        pinned: false,
                        elevation: 0,
                        backgroundColor: Color(0xFF285C55),
                        title: Text(
                          "WhatsApp",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                    SliverPersistentHeader(
                      delegate: _SliverAppBarDelegate(
                        TabBar(
                          controller: controller,
                          unselectedLabelColor: Color(0xFF8CAAAB),
                          labelColor: Colors.white,
                          indicatorColor: Colors.white,
                          // isScrollable: true,
                          labelPadding: EdgeInsets.symmetric(horizontal: 0),
                          // 패딩을 최소화
                          tabs: [
                            Container(
                              width: 50, // 카메라 탭의 너비 고정
                              child: Tab(
                                  icon: SvgPicture.asset(
                                    'assets/lego/whatsapp_main_view_lego/camera.svg',
                                    width: 25,
                                    colorFilter: ColorFilter.mode(
                                        Colors.white, BlendMode.srcIn),
                                  )),
                            ),
                            Container(
                              width: 100, // 모든 탭의 너비를 고정 값으로 설정
                              child: Tab(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'CHATS',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 22.0,
                                      width: 22.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "12",
                                          style: TextStyle(
                                              color: Color(0xFF285C55),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 100, // 일관된 탭 너비
                              child: Tab(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'STATUS',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 7.0,
                                      width: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "",
                                          style: TextStyle(
                                              color: Color(0xFF285C55),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 100, // 일관된 탭 너비
                              child: Tab(
                                child: Text(
                                  'CALLS',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      pinned: true,
                    ),
                  ];
                },
                body: TabBarView(
                  controller: controller,
                  children: [
                    Container().backgroundColor(Colors.green),
                    ChatView(),
                    StatusView(),
                    CallView(),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Color(0xFF285C55),
      margin: EdgeInsets.only(top: 0),
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

main() async {
  return runApp(MaterialApp(
    home: NewView(),
  ));
}
