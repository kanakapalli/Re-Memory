# flutter_unity_widget_example

Demonstrates how to use the flutter_unity_widget plugin.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.





Here’s a concise guide to make the flutter-unity-view-widget example project work after importing:

Post-Import Setup for flutter-unity-view-widget
After importing the Unity project into your Flutter app, follow these steps to resolve common build issues:

1. Add UnityThemeSelector Style
Go to:
bash
Copy code
example/android/unityLibrary/src/main/res/values
Create or open styles.xml and add:

```xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
  <string name="app_name">flutterunitywidgets</string>
  <string name="game_view_content_description">Game view</string>
  <style name="UnityThemeSelector" parent="Theme.AppCompat.Light.NoActionBar"> </style>
</resources>
```

2. Comment Out xrmanifest.androidlib in build.gradle
Go to:
```
example/android/unityLibrary/build.gradle
```
Find and comment out this line:
```
// implementation project('xrmanifest.androidlib')
```

