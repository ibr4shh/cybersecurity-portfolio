import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import 'recipe_detail_screen.dart';

class RecipeBoxScreen extends StatelessWidget {
  const RecipeBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final savedRecipes = context.watch<AppState>().savedRecipes;

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Recipe Box'),
      ),
      body: savedRecipes.isEmpty
          ? const Center(child: Text('No recipes saved yet.'))
          : ListView.builder(
              itemCount: savedRecipes.length,
              itemBuilder: (context, index) {
                final recipe = savedRecipes[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(recipe.title),
                    subtitle: Text(recipe.description, maxLines: 1, overflow: TextOverflow.ellipsis),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeDetailScreen(recipe: recipe),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}
