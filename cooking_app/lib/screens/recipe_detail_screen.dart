import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/recipe.dart';
import '../providers/app_state.dart';

class RecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();
    final isSaved = appState.isRecipeSaved(recipe);

    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
        actions: [
          IconButton(
            icon: Icon(isSaved ? Icons.bookmark : Icons.bookmark_border),
            onPressed: () {
              appState.toggleSaveRecipe(recipe);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              recipe.description,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ingredients',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    appState.addIngredientsToShoppingList(recipe.ingredients);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Added to shopping list')),
                    );
                  },
                  icon: const Icon(Icons.add_shopping_cart),
                  label: const Text('Add all'),
                ),
              ],
            ),
            const Divider(),
            ...recipe.ingredients.map((ing) => ListTile(
                  title: Text(ing.name),
                  trailing: Text(ing.amount),
                )),
            const SizedBox(height: 24),
            Text(
              'Instructions',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const Divider(),
            ...recipe.instructions.asMap().entries.map((entry) {
              int idx = entry.key;
              String step = entry.value;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 12,
                      child: Text((idx + 1).toString(), style: const TextStyle(fontSize: 12)),
                    ),
                    const SizedBox(width: 12),
                    Expanded(child: Text(step)),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
