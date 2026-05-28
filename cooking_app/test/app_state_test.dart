import 'package:flutter_test/flutter_test.dart';
import 'package:cooking_app/providers/app_state.dart';
import 'package:cooking_app/models/recipe.dart';
import 'package:cooking_app/models/ingredient.dart';

void main() {
  group('AppState Tests', () {
    late AppState appState;
    late Recipe testRecipe;

    setUp(() {
      appState = AppState();
      testRecipe = Recipe(
        id: 'test-1',
        title: 'Test Recipe',
        description: 'Test Description',
        ingredients: [Ingredient(name: 'Test Ingredient', amount: '1 unit')],
        instructions: ['Step 1'],
      );
    });

    test('Initial state is empty', () {
      expect(appState.savedRecipes, isEmpty);
      expect(appState.shoppingList, isEmpty);
    });

    test('Toggle save recipe adds and removes recipe', () {
      appState.toggleSaveRecipe(testRecipe);
      expect(appState.savedRecipes.length, 1);
      expect(appState.isRecipeSaved(testRecipe), true);

      appState.toggleSaveRecipe(testRecipe);
      expect(appState.savedRecipes, isEmpty);
      expect(appState.isRecipeSaved(testRecipe), false);
    });

    test('Add ingredients to shopping list', () {
      final ingredients = [
        Ingredient(name: 'Ing 1', amount: '1'),
        Ingredient(name: 'Ing 2', amount: '2'),
      ];
      appState.addIngredientsToShoppingList(ingredients);
      expect(appState.shoppingList.length, 2);
      expect(appState.shoppingList[0].name, 'Ing 1');
    });

    test('Remove from shopping list', () {
      final ingredients = [
        Ingredient(name: 'Ing 1', amount: '1'),
        Ingredient(name: 'Ing 2', amount: '2'),
      ];
      appState.addIngredientsToShoppingList(ingredients);
      appState.removeFromShoppingList(0);
      expect(appState.shoppingList.length, 1);
      expect(appState.shoppingList[0].name, 'Ing 2');
    });

    test('Clear shopping list', () {
      appState.addIngredientsToShoppingList([Ingredient(name: 'Ing', amount: '1')]);
      appState.clearShoppingList();
      expect(appState.shoppingList, isEmpty);
    });
  });
}
