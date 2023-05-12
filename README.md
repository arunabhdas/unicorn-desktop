# UnicornApp 

* UnicornApp for macOS

## Steps

```
flutter channel stable

flutter upgrade

flutter config --enable-macos-desktop

flutter create unicornapp --org app.unicornapp

cd unicornapp

flutter clean

flutter run -d macos

flutter run -d macos -t lib/macos_main.dart

```


### Dependencies

* Add dependencies to pubspec.yaml

```
dependencies:
  flutter:
    sdk: flutter


  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^1.0.2
  macos_ui: ^1.12.2
  hive: ^2.2.3
  hive_flutter: ^1.1.0

```

### Dev Dependencies
* Add dev_dependencies to pubspec.yaml
```

dev_dependencies:
  flutter_test:
    sdk: flutter

  # The "flutter_lints" package below contains a set of recommended lints to
  # encourage good coding practices. The lint set provided by the package is
  # activated in the `analysis_options.yaml` file located at the root of your
  # package. See that file for information about deactivating specific lint
  # rules and activating additional ones.
  flutter_lints: ^2.0.0
  hive_generator: ^2.0.0
  build_runner: ^2.4.2

```

### Run flutter pub run
* Run dart run

```
flutter pub get

dart run
```


### Issues

https://github.com/flutter/flutter/issues/126645


### Links

https://youtu.be/ZQyehMSPHiI