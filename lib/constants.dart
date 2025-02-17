import 'package:cooking_app/models/category_model.dart';
import 'package:flutter/material.dart';

Color kColor = const Color(0xff9AA7A8);

Color kColor2 = const Color(0xff203334);

Color kColor3 = const Color(0xffCCD0D0);

List<Categorymodel> kCategoryModelList = [
  Categorymodel(
      title: 'Seafood',
      subTitle: 'Fresh and flavorful',
      textColor: Colors.white,
      color: kColor2,
      image: 'assets/images/seafood.png'),
  Categorymodel(
      title: 'Beef',
      subTitle: 'protein-packed ',
      textColor: kColor2,
      color: Colors.white,
      image: 'assets/images/beef.png'),
  Categorymodel(
      title: 'Pasta',
      subTitle: 'Fresh and flavorful',
      textColor: Colors.white,
      color: kColor2,
      image: 'assets/images/pasta.png'),
  Categorymodel(
      title: 'Vegetarian',
      subTitle: 'Fresh and flavorful',
      textColor: kColor2,
      color: Colors.white,
      image: 'assets/images/salads.png'),
  Categorymodel(
      title: 'Dessert',
      subTitle: 'Fresh and flavorful',
      textColor: Colors.white,
      color: kColor2,
      image: 'assets/images/desserts.png'),
  Categorymodel(
      title: 'Breakfast',
      subTitle: 'Fresh and flavorful',
      textColor: kColor2,
      color: Colors.white,
      image: 'assets/images/breakfast.png'),
  Categorymodel(
      title: 'Salmon',
      subTitle: 'Fresh and flavorful',
      textColor: Colors.white,
      color: kColor2,
      image: 'assets/images/salmon.png'),
  Categorymodel(
      title: 'Chicken',
      subTitle: 'A versatile protein',
      textColor: kColor2,
      color: Colors.white,
      image: 'assets/images/chicken.png'),
];

List<Categorymodel> kCategoryModelList2 = [
  Categorymodel(
      title: 'Chicken',
      subTitle: 'A versatile protein, perfect for grilling, frying, and baking.',
      textColor: kColor2,
      color: Colors.white,
      image: 'assets/images/chicken.png'),
  Categorymodel(
      title: 'Seafood',
      subTitle: 'Fresh and flavorful, seafood includes fish, shrimp, and shellfish',
      textColor: Colors.white,
      color: kColor2,
      image: 'assets/images/seafood.png'),
  Categorymodel(
      title: 'Beef',
      subTitle: 'A rich source of protein, meat is perfect for grilling, roasting, and stewing ',
      textColor: kColor2,
      color: Colors.white,
      image: 'assets/images/beef.png'),
  Categorymodel(
      title: 'Pasta',
      subTitle: 'A versatile dish made from durum wheat, perfect for boiling and pairing',
      textColor: Colors.white,
      color: kColor2,
      image: 'assets/images/pasta.png'),
  Categorymodel(
      title: 'Vegetarian',
      subTitle: 'Dishes made without meat, often based on vegetables, fruits, grains, and legumes',
      textColor: kColor2,
      color: Colors.white,
      image: 'assets/images/salads.png'),
  Categorymodel(
      title: 'Dessert',
      subTitle: 'Sweet treats served after meals, such as cake, cookies, ice cream, and pastries',
      textColor: Colors.white,
      color: kColor2,
      image: 'assets/images/desserts.png'),
  Categorymodel(
      title: 'Breakfast',
      subTitle: 'Start your day right with our delicious breakfast recipes, from pancakes to healthy smoothies!',
      textColor: kColor2,
      color: Colors.white,
      image: 'assets/images/breakfast.png'),
  Categorymodel(
      title: 'Salmon',
      subTitle: 'Enjoy fresh and flavorful salmon dishes, perfect for any meal!',
      textColor: Colors.white,
      color: kColor2,
      image: 'assets/images/salmon.png'),
  
];


Map<String, List<String>> ImagesByCategory ={
  "Seafood":[
    'assets/images/seafood/Frame 6.png',
    'assets/images/seafood/Frame 7-1.png',
    'assets/images/seafood/Frame 7.png',
    'assets/images/seafood/Frame 8.png',
    'assets/images/seafood/Frame 9.png',
    'assets/images/seafood/Frame 10.png',
    'assets/images/seafood/Frame 11.png',
    'assets/images/seafood/Frame 12.png',
    'assets/images/seafood/Frame 13.png',
    'assets/images/seafood/Frame 14.png',
    'assets/images/seafood/Frame 15.png',
    'assets/images/seafood/Frame 16.png',
    'assets/images/seafood/Frame 17.png',
    'assets/images/seafood/Frame 18.png',
  ],
  'Beef': [
    'assets/images/beef/Frame 31.png',
    'assets/images/beef/Frame 32.png',
    'assets/images/beef/Frame 33.png',
    'assets/images/beef/Frame 34.png',
    'assets/images/beef/Frame 35.png',
    'assets/images/beef/Frame 36.png',
    'assets/images/beef/Frame 37.png',
    'assets/images/beef/Frame 38.png',
    'assets/images/beef/Frame 39.png',
    'assets/images/beef/Frame 40.png',
    'assets/images/beef/Frame 41.png',
    'assets/images/beef/Frame 42.png'

  ],
  'Breakfast':[
    'assets/images/breakfast/Frame 7.png',
    'assets/images/breakfast/Frame 43.png',
    'assets/images/breakfast/Frame 44.png',
    'assets/images/breakfast/Frame 45.png',
    'assets/images/breakfast/Frame 46.png',
    'assets/images/breakfast/Frame 47.png',
    'assets/images/breakfast/Frame 49.png',
    'assets/images/breakfast/Frame 50.png',
  ],
  'Chicken':[
    'assets/images/chicken/Frame 19.png',
    'assets/images/chicken/Frame 20.png',
    'assets/images/chicken/Frame 21.png',
    'assets/images/chicken/Frame 22.png',
    'assets/images/chicken/Frame 23.png',
    'assets/images/chicken/Frame 24.png',
    'assets/images/chicken/Frame 25.png',
    'assets/images/chicken/Frame 26.png',
    'assets/images/chicken/Frame 27.png',
    'assets/images/chicken/Frame 28.png',
    'assets/images/chicken/Frame 29.png',
    'assets/images/chicken/Frame 30.png',
  ],
  'Dessert':[
    'assets/images/desserts/Frame 51.png',
    'assets/images/desserts/Frame 52.png',
    'assets/images/desserts/Frame 53.png',
    'assets/images/desserts/Frame 54.png',
    'assets/images/desserts/Frame 55.png',
    'assets/images/desserts/Frame 56.png',
    'assets/images/desserts/Frame 57.png',
    'assets/images/desserts/Frame 58.png',
    'assets/images/desserts/Frame 59.png',
    'assets/images/desserts/Frame 60.png',
    'assets/images/desserts/Frame 61.png',
    'assets/images/desserts/Frame 62.png',
    'assets/images/desserts/Frame 63.png',
    'assets/images/desserts/Frame 64.png',
    'assets/images/desserts/Frame 65.png',
  ],
  'Vegetarian':[
    'assets/images/salads/Frame 48.png',
    'assets/images/salads/Frame 66.png',
    'assets/images/salads/Frame 67.png',
    'assets/images/salads/Frame 68.png',
    'assets/images/salads/Frame 69.png',
    'assets/images/salads/Frame 71.png',
    'assets/images/salads/Frame 72.png',
    'assets/images/salads/Frame 73.png',
    'assets/images/salads/Frame 74.png',
    'assets/images/salads/Frame 75.png',
    'assets/images/salads/Frame 76.png',
    'assets/images/salads/Frame 77.png',
    'assets/images/salads/Frame 78.png',
  ],
  'Miscellaneous':[
    'assets/images/salads/Frame 73.png',
    'assets/images/salads/Frame 74.png',
    'assets/images/salads/Frame 75.png',
    'assets/images/salads/Frame 76.png',
    'assets/images/salads/Frame 77.png',
    'assets/images/desserts/Frame 54.png',
    'assets/images/desserts/Frame 55.png',
    'assets/images/desserts/Frame 56.png',
    'assets/images/desserts/Frame 57.png',
    'assets/images/desserts/Frame 58.png',
    'assets/images/desserts/Frame 59.png',
    'assets/images/desserts/Frame 60.png',
    'assets/images/desserts/Frame 61.png',
     'assets/images/chicken/Frame 23.png',
    'assets/images/chicken/Frame 24.png',
    'assets/images/chicken/Frame 25.png',
    'assets/images/chicken/Frame 26.png',
    'assets/images/chicken/Frame 27.png',
    'assets/images/chicken/Frame 28.png',
  ]
};
