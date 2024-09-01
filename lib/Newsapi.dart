import 'package:http/http.dart' as http;
import 'dart:convert';

void fetchNews() async {
  final apiKey = '5fd0c5f6be23487aa1ba1165175b8003'; // Replace with your actual API key
  final url = 'https://newsapi.org/v2/top-headlines?country=us&apiKey=$apiKey';

  // Perform the GET request
  final response = await http.get(Uri.parse(url));

  // Check if the request was successful
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    print(data); // Print the fetched news data
  } else {
    print('Failed to load news');
  }
}
