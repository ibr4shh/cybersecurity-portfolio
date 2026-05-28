import '../models/recipe.dart';
import '../models/ingredient.dart';

final List<Recipe> sampleRecipes = [
  Recipe(
    id: '1',
    title: 'Classic Spaghetti Bolognese',
    description: 'A hearty and flavorful Italian pasta dish with a rich meat sauce.',
    ingredients: [
      Ingredient(name: 'Spaghetti', amount: '200g'),
      Ingredient(name: 'Ground Beef', amount: '250g'),
      Ingredient(name: 'Tomato Sauce', amount: '400g'),
      Ingredient(name: 'Onion', amount: '1 small'),
      Ingredient(name: 'Garlic', amount: '2 cloves'),
      Ingredient(name: 'Olive Oil', amount: '1 tbsp'),
    ],
    instructions: [
      'Boil water in a large pot and cook spaghetti according to package instructions.',
      'Finely chop the onion and garlic.',
      'Heat olive oil in a pan and sauté onion and garlic until soft.',
      'Add ground beef and cook until browned.',
      'Pour in tomato sauce and simmer for 15 minutes.',
      'Serve sauce over cooked spaghetti.'
    ],
  ),
  Recipe(
    id: '2',
    title: 'Fresh Garden Salad',
    description: 'A light and refreshing salad with a variety of crisp vegetables.',
    ingredients: [
      Ingredient(name: 'Lettuce', amount: '1 head'),
      Ingredient(name: 'Cucumber', amount: '1 large'),
      Ingredient(name: 'Cherry Tomatoes', amount: '100g'),
      Ingredient(name: 'Red Onion', amount: '1/4 small'),
      Ingredient(name: 'Olive Oil', amount: '2 tbsp'),
      Ingredient(name: 'Lemon Juice', amount: '1 tbsp'),
    ],
    instructions: [
      'Wash and chop the lettuce.',
      'Slice the cucumber and onion, and halve the tomatoes.',
      'In a large bowl, toss all vegetables together.',
      'Whisk olive oil and lemon juice together for the dressing.',
      'Drizzle dressing over the salad and serve immediately.'
    ],
  ),
  Recipe(
    id: '3',
    title: 'Chicken Stir-fry',
    description: 'A quick and healthy Asian-inspired dish with tender chicken and colorful veggies.',
    ingredients: [
      Ingredient(name: 'Chicken Breast', amount: '300g'),
      Ingredient(name: 'Bell Peppers', amount: '2 medium'),
      Ingredient(name: 'Broccoli', amount: '1 small head'),
      Ingredient(name: 'Soy Sauce', amount: '3 tbsp'),
      Ingredient(name: 'Ginger', amount: '1 tsp grated'),
      Ingredient(name: 'Vegetable Oil', amount: '2 tbsp'),
    ],
    instructions: [
      'Slice chicken and vegetables into bite-sized pieces.',
      'Heat oil in a wok or large pan over high heat.',
      'Stir-fry chicken until cooked through.',
      'Add vegetables and stir-fry for another 5 minutes until tender-crisp.',
      'Stir in soy sauce and ginger, cook for 1 minute more.',
      'Serve with rice or noodles.'
    ],
  ),
  Recipe(
    id: '4',
    title: 'Avocado Toast',
    description: 'A simple, trendy, and nutritious breakfast or snack.',
    ingredients: [
      Ingredient(name: 'Whole Grain Bread', amount: '2 slices'),
      Ingredient(name: 'Ripe Avocado', amount: '1'),
      Ingredient(name: 'Red Pepper Flakes', amount: 'a pinch'),
      Ingredient(name: 'Lemon', amount: '1/2'),
      Ingredient(name: 'Salt', amount: 'to taste'),
    ],
    instructions: [
      'Toast the bread until golden brown.',
      'Mash the avocado in a small bowl with a squeeze of lemon and a pinch of salt.',
      'Spread the avocado mixture onto the toasted bread.',
      'Sprinkle with red pepper flakes and serve.'
    ],
  ),
  Recipe(
    id: '5',
    title: 'Banana Smoothie',
    description: 'A creamy and delicious smoothie perfect for a quick energy boost.',
    ingredients: [
      Ingredient(name: 'Bananas', amount: '2'),
      Ingredient(name: 'Milk', amount: '250ml'),
      Ingredient(name: 'Honey', amount: '1 tbsp'),
      Ingredient(name: 'Yogurt', amount: '2 tbsp'),
      Ingredient(name: 'Ice Cubes', amount: 'a handful'),
    ],
    instructions: [
      'Peel and slice the bananas.',
      'Combine all ingredients in a blender.',
      'Blend on high speed until smooth.',
      'Pour into glasses and enjoy cold.'
    ],
  ),
];
