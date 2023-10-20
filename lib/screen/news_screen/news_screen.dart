import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data.dart';
import 'controller.dart';
import 'news_services.dart';

/*class NewsScreen extends StatelessWidget {
  final ser = ApiService();
  final NewsController newsController = Get.put(NewsController());
  late TabController tabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          toolbarHeight: 90,
          title: Text('Exact News', textDirection: TextDirection.values.first),
          bottom: TabBar(
            labelStyle: TextStyle(letterSpacing: 1),
            //controller: newsController.tabController,
            //indicatorColor: Colors.indigo,
            dividerColor: Colors.indigoAccent,
            isScrollable: true,
            tabs: tabs.map((tabs) {
              return Container(
                  width: 100,
                  //height: ,
                  child: Tab(
                    text: tabs,
                  ));
            }).toList(),
            /*onTap: (int index) {
              ser.selectedCategory.value = tabs[index];
              ser.fetchNews(ser.selectedCategory.value);
            },*/
          ),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TabBarView(
                  //controller: newsController.tabController,
                  //physics: ScrollPhysics(),
                  children: [
                    Obx(
                      () => newsController.isLoading.value
                          ? Center(child: CircularProgressIndicator())
                          : Container(
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: newsController.newsList.length,
                                //newsController.newsList.length
                                itemBuilder: (context, index) {
                                  final news = newsController.newsList[index];
                                  return ListTile(
                                    title: Text(news.title),
                                    subtitle: Text(news.description),
                                  );
                                },
                              ),
                            ),
                    ),
                  ]),
            ),
            /*TextButton(
                onPressed: () {
                  ser.fetchNews();
                },
                child: Text('data'),
              )*/
          ],
        ),
      ),
    );
  }
}*/
