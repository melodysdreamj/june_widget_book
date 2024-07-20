import 'package:flutter/material.dart';

import '../../../../../../../../../../../main.dart';
import 'item.dart';

class NewView extends StatefulWidget {
  const NewView({super.key});

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Google").textStyle(Theme.of(context).textTheme.headlineSmall!).fontWeight(FontWeight.bold),
        centerTitle: false,
      ),
      // google search result page
      body: SingleChildScrollView(
        child: Column(
          children: [
            ItemView(
              iconUrl: "sample",
              // Using Google favicon
              websiteName: "New York Times",
              websiteUrl: "https://www.nytimes.com",
              title: "Latest News in Global Politics",
              description:
                  "Stay updated with the latest developments in global politics, featuring in-depth analysis and exclusive reports.",
              date: DateTime(2024, 5, 1),
            ),
            ItemView(
              iconUrl: "sample",
              // Using Google favicon
              websiteName: "GitHub",
              websiteUrl: "https://github.com",
              title: "Explore Open Source Projects",
              description:
                  "Discover and contribute to thousands of open source software projects, ranging from small plugins to major frameworks.",
              date: DateTime(2024, 5, 2),
            ),
            ItemView(
              iconUrl: "sample",
              // Using Google favicon
              websiteName: "IMDb",
              websiteUrl: "https://www.imdb.com",
              title: "Top Movies to Watch This Year",
              description: "Check out the highest-rated movies this year according to IMDb users and critics alike.",
              date: DateTime(2024, 4, 30),
            ),
            ItemView(
              iconUrl: "sample",
              // Using Google favicon
              websiteName: "Wikipedia",
              websiteUrl: "https://www.wikipedia.org",
              title: "Learn Something New",
              description:
                  "Dive into detailed articles on virtually any topic you can think of, from history to new technology.",
              date: DateTime(2024, 5, 3),
            ),
            ItemView(
              iconUrl: "sample",
              // Using Google favicon
              websiteName: "Travel + Leisure",
              websiteUrl: "https://www.travelandleisure.com",
              title: "Best Travel Destinations of 2024",
              description:
                  "Plan your next vacation with our list of the best travel destinations for 2024, including tips and recommendations.",
              date: DateTime(2024, 5, 4),
            ),
            ItemView(
              iconUrl: "sample",
              // Using Google favicon
              websiteName: "Epicurious",
              websiteUrl: "https://www.epicurious.com",
              title: "Delicious Recipes for Home Chefs",
              description:
                  "Find the perfect recipe for any occasion with thousands of options from world-renowned chefs.",
              date: DateTime(2024, 5, 5),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButtonKit(),
    );
  }
}

main() async {
  return buildApp(home: NewView());
}
