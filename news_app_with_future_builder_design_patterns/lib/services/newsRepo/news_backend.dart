import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/services/newsRepo/news_service.dart';

class NewsBackend extends AbstractNewsRepo {
  @override
  Future<List<Map>> getNewsData() async {
    print('Function : getNewsFromWeb : Fetching news from web...');
    try {
      final response = await http.get(
        Uri.parse(
          'https://mobilebackendsimpleflask-imed1024-s73qk5q3.leapcell.dev/news.all.get',
        ),
        headers: {'Content-Type': 'application/json'},
      );
      print('Response status: ${response.toString()}');
      if (response.statusCode == 200) {
        // Parse JSON response
        final List<dynamic> data = json.decode(response.body);
        return data.map((item) => item as Map<String, dynamic>).toList();
      } else {
        throw Exception('Failed to load news: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching news: $e');
    }
  }
}
