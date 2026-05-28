# Cooking Assistant App

A cross-platform mobile application built with Flutter to help people cook.

## Features
- **Recipe Discovery:** Browse a collection of delicious recipes.
- **Ingredient-based Search:** Find recipes based on the ingredients you have.
- **My Recipe Box:** Save your favorite recipes for quick access.
- **Shopping List:** Automatically generate and manage shopping lists from recipe ingredients.

## Tech Stack
- **Framework:** Flutter (Dart)
- **State Management:** Provider

## Getting Started
To run this app:
1. Ensure you have Flutter installed on your machine.
2. Navigate to the `cooking_app` directory.
3. Run `flutter pub get` to install dependencies.

### Testing on an Android Phone
To see the app on your Android device:

#### Option 1: Run directly from your computer (Recommended)
1. **Enable Developer Options:** On your phone, go to **Settings > About Phone** and tap **Build Number** 7 times.
2. **Enable USB Debugging:** Go to **Settings > System > Developer Options** and turn on **USB Debugging**.
3. **Connect your phone:** Connect your phone to your computer via USB cable. If prompted on the phone, "Allow USB Debugging".
4. **Run the app:**
   - In your terminal, run `flutter devices` to make sure your phone is recognized.
   - Run `flutter run`.

#### Option 2: Build and install an APK
If you want to send the app to your phone without keeping it plugged in:
1. Run `flutter build apk --release`.
2. Find the generated file at `build/app/outputs/flutter-apk/app-release.apk`.
3. Transfer this file to your phone and open it to install the app.

## Project Structure
- `lib/models/`: Data models for Recipes and Ingredients.
- `lib/providers/`: State management logic using Provider.
- `lib/screens/`: UI screens for each app feature.
- `lib/data/`: Sample recipe data.
- `test/`: Unit tests for the application logic.
