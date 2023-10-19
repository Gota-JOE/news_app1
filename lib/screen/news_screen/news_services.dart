import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiService extends GetxService {
  //static String countrys = 'eg';
  final selectedCategory = 'business'.obs;

  static final apiKey = 'ff07382cc1f84dc4870f8ed0d3def8b7';
  final url = 'https://newsapi.org/v2/top-headlines?country=eg&apiKey=$apiKey';

  ///&category=$category

  Future<List<dynamic>> fetchNews() async {
    final response = await http.get(Uri.parse('$url'));
    if (response.statusCode == 200) {
      final data = response.body;
      try {
        final decodedData = jsonDecode(data);
        print(decodedData);
        if (decodedData is Map && decodedData.containsKey('articles')) {
          return decodedData['articles'] as List<dynamic>;
        } else {
          throw Exception('Invalid response format: articles key not found');
        }
      } catch (e) {
        throw Exception('Failed to decode response: $e');
      }
    } else {
      throw Exception(
          'Failed to fetch news. Status code: ${response.statusCode}');
    }
  }
}
