import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data.dart';
import 'controller.dart';
import 'news_services.dart';

class NewsScreen extends StatelessWidget {
  final ser = ApiService();
  final NewsController newsController = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        toolbarHeight: 90,
        title: Text('Exact News', textDirection: TextDirection.values.first),
        bottom: TabBar(
          //controller: TabController(length: tabs.length, ),
            //indicatorColor: Colors.indigo,
            dividerColor: Colors.indigoAccent,
            isScrollable: true,
            tabs: tabs.map((category) {
              return Container(
                  width: 100,
                  //height: ,
                  child: Tab(
                    text: category,
                  ));
            }).toList()),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TabBarView(children: [
            Obx(
              () => newsController.isLoading.value
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: newsController.newsList.length,
                      itemBuilder: (context, index) {
                        final news = newsController.newsList[index];
                        return ListTile(
                          title: Text(news.title),
                          subtitle: Text(news.description),
                        );
                      },
                    ),
            ),
          ]),
          /*TextButton(
              onPressed: () {
                ser.fetchNews();
              },
              child: Text('data'),
            )*/
        ],
      ),
    );
  }
}
