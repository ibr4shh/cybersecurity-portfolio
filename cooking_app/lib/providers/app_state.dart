import 'package:flutter/foundation.dart';
import '../models/recipe.dart';
import '../models/ingredient.dart';

class AppState extends ChangeNotifier {
  final List<Recipe> _savedRecipes = [];
  final List<Ingredient> _shoppingList = [];

  List<Recipe> get savedRecipes => List.unmodifiable(_savedRecipes);
  List<Ingredient> get shoppingList => List.unmodifiable(_shoppingList);

  void toggleSaveRecipe(Recipe recipe) {
    if (_savedRecipes.any((r) => r.id == recipe.id)) {
      _savedRecipes.removeWhere((r) => r.id == recipe.id);
    } else {
      _savedRecipes.add(recipe);
    }
    notifyListeners();
  }

  bool isRecipeSaved(Recipe recipe) {
    return _savedRecipes.any((r) => r.id == recipe.id);
  }

  void addIngredientsToShoppingList(List<Ingredient> ingredients) {
    _shoppingList.addAll(ingredients);
    notifyListeners();
  }

  void removeFromShoppingList(int index) {
    _shoppingList.removeAt(index);
    notifyListeners();
  }

  void clearShoppingList() {
    _shoppingList.clear();
    notifyListeners();
  }
}
