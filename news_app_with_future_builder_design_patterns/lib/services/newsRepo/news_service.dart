import 'package:news_app/services/newsRepo/news_backend.dart';
import 'package:news_app/services/newsRepo/news_dummy.dart';

abstract class AbstractNewsRepo {
  Future<List<Map>> getNewsData();

  static AbstractNewsRepo? _newsInstance;

  static AbstractNewsRepo getInstance() {
    _newsInstance ??= NewsBackend();
    return _newsInstance!; // For backend data
  }
}
