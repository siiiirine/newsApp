import 'package:news_app/services/newsRepo/news_service.dart';

class NewsDummy extends AbstractNewsRepo {
  @override
  Future<List<Map>> getNewsData() async {
    await Future.delayed(Duration(seconds: 5)); // Simulate network delay
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
    return news;
  }
}
