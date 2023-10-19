import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data.dart';
import '../../model/news_model.dart';
import 'news_services.dart';

class NewsController extends GetxController with GetSingleTickerProviderStateMixin{
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

}
