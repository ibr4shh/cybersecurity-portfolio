import 'package:flutter/material.dart';
import '../data/sample_recipes.dart';
import '../models/recipe.dart';
import 'recipe_detail_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller = TextEditingController();
  List<Recipe> _filteredRecipes = [];

  void _searchRecipes(String query) {
    if (query.isEmpty) {
      setState(() {
        _filteredRecipes = [];
      });
      return;
    }

    final ingredients = query.toLowerCase().split(',').map((e) => e.trim()).toList();

    setState(() {
      _filteredRecipes = sampleRecipes.where((recipe) {
        final recipeIngredients = recipe.ingredients.map((i) => i.name.toLowerCase()).toList();
        return ingredients.every((searchIng) =>
          recipeIngredients.any((recipeIng) => recipeIng.contains(searchIng))
        );
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search by Ingredients'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Enter ingredients (e.g. Tomato, Onion)',
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: _searchRecipes,
            ),
          ),
          Expanded(
            child: _filteredRecipes.isEmpty
                ? const Center(child: Text('Enter ingredients to find recipes'))
                : ListView.builder(
                    itemCount: _filteredRecipes.length,
                    itemBuilder: (context, index) {
                      final recipe = _filteredRecipes[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
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
          ),
        ],
      ),
    );
  }
}
