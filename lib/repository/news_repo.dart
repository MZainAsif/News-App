import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/models/categories_news_model.dart';
import 'package:news_app/models/news_channels_headlines_model.dart';

class NewsRepository {
  Future<NewsChannelHeadlinesModel> fetchNewsChannelHeadlines(
      String channelName) async {
    String url =
        'https://newsapi.org/v2/top-headlines?sources=$channelName&apiKey=32ae2a6c18c14355a60a811f18f92142';
    final response = await http.get(Uri.parse(url));
    final body = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return NewsChannelHeadlinesModel.fromJson(body);
    }
    throw Exception('Error while Fetching Data');
  }

  Future<Catoegrymodel> fetchCategoriesNews(String category) async {
    String url =
        'https://newsapi.org/v2/everything?q=$category&apiKey=32ae2a6c18c14355a60a811f18f92142';
    final response = await http.get(Uri.parse(url));
    final body = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return Catoegrymodel.fromJson(body);
    }
    throw Exception('Error while Fetching Data');
  }
}
