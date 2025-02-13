import 'dart:convert';
import 'dart:io';

import 'package:cooking_app/models/recipe_model.dart';
import 'package:http/http.dart' as http;

class RecipesByIdServise {
  static const String baseUrl = 'https://themealdb.com/api/json/v1/1/lookup.php?i=';

  Future<RecipeModel> getRecipeById(String id) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl$id'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body)['meals'][0];
        return RecipeModel.fromJson(data);
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
