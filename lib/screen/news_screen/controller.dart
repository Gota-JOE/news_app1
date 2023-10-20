import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

/*class NewsController extends GetxController with GetSingleTickerProviderStateMixin{
  //late TabController tabController;
  final ApiService _apiService = Get.find();
  final newsList = <NewsModel>[].obs;
  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    //tabController = TabController(length: 7, vsync: this);
    fetchNews();
  }

  Future<void> fetchNews() async {
    try {
      isLoading.value = true;
      final result = await _apiService.fetchNews();
      newsList.assignAll(result.map((json) => NewsModel.fromJson(json)));
    } catch (e) {
      // Handle error
    } finally {
      isLoading.value = false;
    }
  }

}*/


class NewsController2 extends GetxController {
  var newsData = [].obs;
  final isLoading = false.obs;
  final apiKey = 'ff07382cc1f84dc4870f8ed0d3def8b7';

  void fetchNewsData(String category) async {
    try {
      isLoading.value = true;
      var url =
          'https://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=$apiKey';
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);
        newsData.value = jsonData['articles'];
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      print(e);
    }
    isLoading.value = false;
  }
}
