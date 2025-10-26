import 'package:flutter/material.dart';
import 'package:news_app/utils/news_web.dart';
import 'package:news_app/widgets/news_item.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  late Future<List<Map>> news;

  @override
  void initState() {
    super.initState();
    news = NewsUtils.getNewsFromWeb();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News App')),
      body: Center(
        child: FutureBuilder<List<Map>>(
          future: news,
          builder: (context, snapshot) {
            if (snapshot.hasError) return Text('Error: ${snapshot.error}');

            if (snapshot.hasData) {
              List<Map> fetched_news = snapshot.data ?? [];
              return ListView.builder(
                itemCount: fetched_news.length,
                itemBuilder: (context, index) {
                  return NewsItem(data: fetched_news[index]);
                },
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
