import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_cupertino_navigation_bar/super_cupertino_navigation_bar.dart';

class NewView extends StatefulWidget {
  const NewView({super.key});

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  final alphabets =
  List.generate(26, (index) => String.fromCharCode(index + 65));

  List<City> _cities = [];
  bool focused = false;

  Future<List<City>> search(String text) async {
    return [
      City(country: "India", city: "Delhi"),
      City(country: "India", city: "Mumbai"),
      City(country: "USA", city: "New York"),
      City(country: "USA", city: "California"),
      City(country: "USA", city: "Texas"),
      City(country: "South Africa", city: "Johannesburg"),
      City(country: "South Africa", city: "Cape Town"),
      City(country: "South Africa", city: "Durban"),
      City(country: "South Korea", city: "Seoul"),
      City(country: "South Korea", city: "Busan"),
      City(country: "South Korea", city: "Incheon"),
      City(country: "South Korea", city: "Daegu"),
      City(country: "South Korea", city: "Gwangju"),
      City(country: "South Korea", city: "Daejeon"),
      City(country: "South Korea", city: "Ulsan"),
      City(country: "South Korea", city: "Suwon"),
    ];
  }

  showSnackBar(BuildContext context) {
    showCupertinoModalPopup(
      useRootNavigator: false,
      context: context,
      builder: (BuildContext context) => Material(
        child: Container(
          height: 100,
          width: double.infinity,
          color: Colors.white,
          padding: const EdgeInsets.all(15),
          child: const Text(
            "This is just snackbar triggered by appbar button",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }

  Widget createResultList() {
    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) =>
          Text("${_cities[index].city} ${_cities[index].country}"),
      separatorBuilder: (context, index) => Divider(
        color: CupertinoColors.systemGrey.withOpacity(0.35),
        height: 25,
      ),
      itemCount: _cities.length,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: SuperScaffold(
            appBar: SuperAppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              // previousPageTitle: "Lists",

              alwaysShowTitle: true,
              leadingWidth: 100,
              title: Text(
                "select city",
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyMedium!.color,
                ),
              ),
              searchBar: SuperSearchBar(
                scrollBehavior: SearchBarScrollBehavior.pinned,
                animationBehavior: SearchBarAnimationBehavior.steady,
                resultBehavior: SearchBarResultBehavior.visibleOnInput,
                onFocused: (value) => setState(() {
                  focused = value;
                  if (!value) _cities = [];
                }),
                onChanged: (text) {
                  search(text).then((value) {
                    _cities = value;
                    setState(() {});
                  });
                },
                onSubmitted: (text) {
                  search(text).then((value) {
                    _cities = value;
                    setState(() {});
                  });
                },
                searchResult: SingleChildScrollView(
                  child: Column(
                    children: [
                      createResultList(),
                    ],
                  ),
                ),
              ),
              largeTitle: SuperLargeTitle(
                enabled: false,
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  FutureBuilder(
                    builder: (BuildContext context,
                        AsyncSnapshot<List<City>> snapshot) {
                      if (snapshot.hasData) {
                        return ListView.separated(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          separatorBuilder: (context, index) => Divider(
                            color: CupertinoColors.systemGrey.withOpacity(0.35),
                            height: 25,
                          ),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            return Text(
                                "${snapshot.data![index].city} ${snapshot.data![index].country}");
                          },
                        );
                      } else {
                        return const CupertinoActivityIndicator(
                          radius: 13,
                        );
                      }
                    },
                    future: search("any text"),
                  ),
                ],
              ),
            ),
          ),
        ),
        focused
            ? const SizedBox()
            : Container(
          alignment: const Alignment(1, 0),
          padding: const EdgeInsets.only(right: 2, top: 100),
          height: MediaQuery.of(context).size.height,
          child: Material(
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: alphabets
                  .map((alphabet) => GestureDetector(
                onTap: () {
                  showSnackBar(context);
                },
                child: Text(
                  alphabet,
                  style: const TextStyle(
                      fontSize: 13,
                      color: CupertinoColors.systemBlue),
                ),
              ))
                  .toList(),
            ),
          ),
        )
      ],
    );
  }
}

class City {
  String country;
  String city;

  City({required this.country, required this.city});
}

main() async {
  return runApp(MaterialApp(
    home: NewView(),
  ));
}
