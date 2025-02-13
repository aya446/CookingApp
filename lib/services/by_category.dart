import 'dart:convert';
import 'dart:io';
import 'package:cooking_app/models/recipe_of_category_model.dart';
import 'package:http/http.dart' as http;

class RecipesByCategotyServise {
  static const String baseUrl = 'https://www.themealdb.com/api/json/v1/1/filter.php?c=';

  Future<List<RecipeOfCategoryModel>> getRecipeByCategory(String category) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl$category'),
      );

      if (response.statusCode == 200) {
        final List data = json.decode(response.body)['meals'];
        return data.map((e) => RecipeOfCategoryModel.fromJson(e)).toList();
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
