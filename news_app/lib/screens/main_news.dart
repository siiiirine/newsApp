import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_item.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<Map> news = [
    {
      "id": 1,
      "title":
          "Universities Adopt AI-Powered Learning Platforms for Personalized Education",
      "image_url":
          "https://images.unsplash.com/photo-1501504905252-473c47e087f8",
      "description":
          "Major universities across the country are implementing artificial intelligence systems to create personalized learning experiences for students, adapting course content based on individual progress and learning styles.",
      "category_id": 3,
    },
    {
      "id": 2,
      "title":
          "Study Reveals Benefits of Bilingual Education in Early Childhood",
      "image_url":
          "https://images.unsplash.com/photo-1503676260728-1c00da094a0b",
      "description":
          "New research shows that children enrolled in bilingual education programs demonstrate enhanced cognitive flexibility and problem-solving skills compared to monolingual peers.",
      "category_id": 3,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News App')),
      body: Center(
        child: ListView.builder(
          itemCount: news.length,
          itemBuilder: (context, index) {
            return NewsItem(data: news[index]);
          },
        ),
      ),
    );
  }
}
