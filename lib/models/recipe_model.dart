class RecipeModel {
  final String  mealID;
  final String name;
  final String category;
  final String area;
  final String instruction;
  final List<String> ingredients;
  final List<String> measures;

  RecipeModel({
    required this.mealID,
    required this.name,
    required this.category,
    required this.area,
    required this.instruction,
    required this.ingredients,
    required this.measures,
  });

  factory RecipeModel.fromJson(Map<String, dynamic> json) {
    List<String> extractedIngredients = [];
    List<String> extractedMeasures = [];

    for (int i = 1; i <= 20; i++) {
      String? ingredient = json['strIngredient$i'];
      String? measure = json['strMeasure$i'];

      if (ingredient != null && ingredient.isNotEmpty) {
        extractedIngredients.add(ingredient);
        extractedMeasures.add(measure ?? "");
      }
    }

    return RecipeModel(
      mealID: json['idMeal'] ?? '',
      name: json['strMeal'] ?? '',
      category: json['strCategory'] ?? '',
      area: json['strArea'] ?? '',
      instruction: json['strInstructions'] ?? '',
      ingredients: extractedIngredients,
      measures: extractedMeasures,
    );
  }
}