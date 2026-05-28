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

## Getting Started (Quick Start for macOS)
Since you are on a **MacBook**, here is the fastest way to get started:

1. **Install Flutter:** Follow the [Official macOS Install Guide](https://docs.flutter.dev/get-started/install/macos).
2. **Check your setup:** Run `flutter doctor` in your terminal.
3. **Download dependencies:**
   ```bash
   cd cooking_app
   flutter pub get
   ```

## Testing on your Android Phone (No USB Port)
Since your MacBook doesn't have a standard USB port, you have three great options:

### Option 1: Wireless Debugging (Android 11+)
If your phone is on Android 11 or newer and on the same Wi-Fi as your Mac:
1. **Enable Developer Options:** On your phone, go to **Settings > About Phone** and tap **Build Number** 7 times.
2. **Wireless Debugging:** Go to **Developer Options**, turn on **Wireless Debugging**, and tap on it to see the pairing code.
3. **Pair from Mac:** In your Mac terminal, use the `adb pair` command with the IP and Port shown on your phone.
4. **Connect & Run:** Once paired, run `flutter run` on your Mac.

### Option 2: Build APK and Transfer via Cloud (Easiest)
1. **Build the App:** In your Mac terminal (inside `cooking_app`), run:
   ```bash
   flutter build apk --release
   ```
2. **Locate the file:** The file is at `build/app/outputs/flutter-apk/app-release.apk`.
3. **Transfer:** Upload this file to **Google Drive**, **Dropbox**, or use **WeTransfer**.
4. **Install:** Open the cloud app on your phone, download the APK, and install it. (You may need to "Allow from this source" when installing).

### Option 3: Use the Android Emulator
You can run the app directly on your MacBook screen:
1. Open **Android Studio**.
2. Go to **Device Manager** and create a "Virtual Device".
3. Once the virtual phone starts, run `flutter run` in your terminal.

## Project Structure
- `lib/models/`: Data models for Recipes and Ingredients.
- `lib/providers/`: State management logic using Provider.
- `lib/screens/`: UI screens for each app feature.
- `lib/data/`: Sample recipe data.
- `test/`: Unit tests for the application logic.
