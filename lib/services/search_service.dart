import 'dart:convert';
import 'dart:io';
import 'package:cooking_app/models/recipe_model.dart';
import 'package:http/http.dart' as http;

class SearchByName {
  static const String baseUrl = 'https://www.themealdb.com/api/json/v1/1/search.php?s=';

  Future<List<RecipeModel>> getRecipeByName(String name) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl$name'),
      );

      if (response.statusCode == 200) {
        final List data = json.decode(response.body)['meals'];
        return data.map((e) => RecipeModel.fromJson(e)).toList();
      } else {
        throw Exception('Server error: ${response.statusCode}');
      }
    } on SocketException {
      throw Exception('No internet connection');
    } on FormatException {
      throw Exception('Invalid response format');
    } on Exception catch (e) {
      throw Exception('Unexpected error: $e');
    }
  }
}
