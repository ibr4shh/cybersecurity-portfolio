import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';

class ShoppingListScreen extends StatelessWidget {
  const ShoppingListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();
    final shoppingList = appState.shoppingList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
        actions: [
          if (shoppingList.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.delete_sweep),
              onPressed: () {
                appState.clearShoppingList();
              },
            ),
        ],
      ),
      body: shoppingList.isEmpty
          ? const Center(child: Text('Your shopping list is empty.'))
          : ListView.builder(
              itemCount: shoppingList.length,
              itemBuilder: (context, index) {
                final ingredient = shoppingList[index];
                return ListTile(
                  title: Text(ingredient.name),
                  subtitle: Text(ingredient.amount),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove_circle_outline),
                    onPressed: () {
                      appState.removeFromShoppingList(index);
                    },
                  ),
                );
              },
            ),
    );
  }
}
