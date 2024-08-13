import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

import 'neumorphic_circle.dart';

class NewView extends StatefulWidget {
  NewView(
      {super.key,
        this.musicList = const [
          ['Low Life', 'Brand New Life'],
          ['Hymn of the Weekend', 'Feat. Some Band'],
          ['The Scientist', 'Tune of the world'],
          ['Yellow', 'Live in Buenos Aires'],
          ['Fix You', 'Yuri\'s Piano'],
          ['Viva La Vida', 'Volcanic Orchestra'],
          ['Paradise', 'Night Life'],
          ['Adventure of a Lifetime', 'Group of People'],
          ['A Sky Full of Stars', 'Futuristic Polar Bears'],
          ['Magic', 'Coldplay'],
        ]});

  final List<List<String>> musicList;

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(46, 51, 55, 1),
              const Color.fromARGB(255, 33, 36, 40),
            ],
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 45,
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Music Player',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          inherit: false,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: NeumorphicCircleView(
                        height: 40,
                        width: 40,
                        child: Icon(
                          Icons.favorite,
                          size: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: NeumorphicCircleView(
                        borderWidth: 10,
                        borderColor: Color.fromARGB(255, 36, 36, 36),
                        height: 180,
                        width: 180,
                        child: Image.asset(
                          'assets/lego/music_list_page_lego/music_disk.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: NeumorphicCircleView(
                        height: 40,
                        width: 40,
                        child: Icon(
                          Icons.menu_rounded,
                          size: 20,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
              ).gestures(
                onTap: () {

                },
              ),
              const SizedBox(height: 40),
              for (int i = 0; i < widget.musicList.length; i++)
                Container(
                  height: 85,
                  margin: const EdgeInsets.only(bottom: 17),
                  decoration: BoxDecoration(
                    color: i == selectedIndex
                        ? Color.fromRGBO(29, 30, 36, 1)
                        : null,
                    borderRadius: BorderRadius.circular(25),
                    border: i == selectedIndex
                        ? Border.all(
                      color: Color.fromRGBO(62, 69, 75, 1),
                      width: 1,
                    )
                        : null,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(left: 8),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    widget.musicList[i][0],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      inherit: false,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    widget.musicList[i][1],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.2),
                                      inherit: false,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                        NeumorphicCircleView(
                          height: 27,
                          width: 27,
                          depth: 2,
                          intensity: 0.3,
                          borderWidth: 6,
                          color:
                          i == selectedIndex ? Color.fromRGBO(230, 59, 16, 1) : null,
                          child: Icon(
                            i == selectedIndex
                                ? Icons.pause_rounded
                                : Icons.play_arrow_rounded,
                            size: 18,
                            color:
                            i == selectedIndex ? Colors.white : Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              selectedIndex = i;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ).gestures(
                  onTap: () {
                    setState(() {
                      selectedIndex = i;
                    });
                  },
                ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: NewView(),
  ));
}
