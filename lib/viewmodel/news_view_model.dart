import 'package:news_app/models/categories_news_model.dart';
import 'package:news_app/models/news_channels_headlines_model.dart';
import 'package:news_app/repository/news_repo.dart';

class NewsViewModels {
  final repo = NewsRepository();

  Future<NewsChannelHeadlinesModel> fetchNewsChannelHeadlines(
      String channelName) async {
    final response = await repo.fetchNewsChannelHeadlines(channelName);
    return response;
  }

  Future<Catoegrymodel> fetchCategoriesNews(String category) async {
    final response = await repo.fetchCategoriesNews(category);
    return response;
  }
}
