class RecipeOfCategoryModel {
  final String  mealID;
  final String name;


  RecipeOfCategoryModel({
    required this.mealID,
    required this.name,
  });

  factory RecipeOfCategoryModel.fromJson(Map<String, dynamic> json) {

    return RecipeOfCategoryModel(
      mealID: json['idMeal'] ?? '',
      name: json['strMeal'] ?? '',
    );
  }
}