import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data.dart';
import 'controller.dart';

class NewsScreen2 extends StatelessWidget {
  final NewsController2 newsController = Get.put(NewsController2());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          toolbarHeight: 100,
          title: Text('Exact News', textDirection: TextDirection.values.first),
          bottom: TabBar(
            labelStyle: TextStyle(letterSpacing: 1),
            //controller: newsController.tabController,
            //indicatorColor: Colors.indigo,
            dividerColor: Colors.indigoAccent,
            isScrollable: true,
            tabs: categories.map((category) => Tab(text: category)).toList(),
            onTap: (index) {
              newsController.fetchNewsData(categories[index]);
            },
          ),
        ),
        body: TabBarView(
          children: categories.map((category) {
            return Obx(() => newsController.isLoading.value
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: newsController.newsData.length,
                    itemBuilder: (context, index) {
                      var article = newsController.newsData[index];
                      return Container(
                        height: 60,
                        width: double.infinity,
                        margin: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xffD0D4CA),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          title: Text(article['title'] ?? ''),
                          subtitle: Text(article['description'] ?? ''),
                        ),
                      );
                    },
                  ));
          }).toList(),
        ),
      ),
    );
  }
}
