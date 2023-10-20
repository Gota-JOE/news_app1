import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

/*class NewsController extends GetxController {
  static var newsData = [].obs;
  static final apiKey = 'ff07382cc1f84dc4870f8ed0d3def8b7';

  void fetchNewsData(String category) async {
    var url =
        'https://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=$apiKey';
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      newsData.value = jsonData['articles'];
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}

class NewsScreen1 extends StatelessWidget {
  final List<String> categories = [
    'business',
    'entertainment',
    'general',
    'health',
    'science',
    'sports',
    'technology'
  ];

  @override
  Widget build(BuildContext context) {
    final NewsController newsController = Get.put(NewsController());

    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('News'),
          bottom: TabBar(
            tabs: categories.map((category) => Tab(text: category)).toList(),
          ),
        ),
        body: TabBarView(
          children: categories.map((category) {
            newsController.fetchNewsData(category);
            return Obx(() => ListView.builder(
              itemCount: NewsController.newsData.length,
              itemBuilder: (context, index) {
                var article = NewsController.newsData[index];
                return ListTile(
                  title: Text(article['title']??''),
                  subtitle: Text(article['description']??''),
                );
              },
            ));
          }).toList(),
        ),
      ),
    );
  }
}*/

/*class NewsScreen1 extends StatelessWidget {
  final List<String> categories = [
    'business',
    'entertainment',
    'general',
    'health',
    'science',
    'sports',
    'technology'
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NewsController());
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('News'),
          bottom: TabBar(
            tabs: categories.map((category) => Tab(text: category)).toList(),
          ),
        ),
        body: TabBarView(
          children: categories.map((category) {
            return Obx(() => ListView.builder(
                  itemCount: controller.newsData.length,
                  itemBuilder: (context, index) {
                    var article = controller.newsData[index];
                    return ListTile(
                      title: Text(article['title']),
                      subtitle: Text(article['description']),
                    );
                  },
                ));
          }).toList(),
        ),
      ),
    );
  }
}
*/