<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

# Neo Reusables
This package contains most of the reusables I use when starting a fresh flutter project

## Features

### Widget Reusables
 - SizeConfig: Used for making sure your UI elements/widgets scale for every screen size
 - NeoText: A fancy wrapper around the normal Text widget. Improves the accessibility of the regular Text widget
 - NeoButton: Another wrapper class, allows developers to create flexible buttons
 - XMargin and YMargin: Provides spaces between elements, in a clear, concise way
 - Navigator: All your navigation needs in one place
### Data Reusables
 - Resource: A wrapper that contains the data model, status and error of any network operation done

## Getting started
You just need to import:
```dart
import 'package:neo_reusables/neo_reusables.dart';
```

## Usage
Note: The examples folder will provider more use-cases and more complex uses
### NeoButton

```dart
NeoButton(
    
)
```

### SizeConfig

- First initialize the SizeConfig file in your main file like this:

```dart

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Builder(builder: (context) {
        final Size size = MediaQuery.of(context).size;
        SizeConfig.init(context,
            width: size.width, height: size.height, allowFontScaling: true);

        return const MyHomePage(title: 'Flutter Demo Home Page');
      }),
    );
  }
}

```

- Then use it to generate scalable heights and widths like so

```dart

    final SizeConfig sizeConfig = SizeConfig();

    //Scalable height
    sizeConfig.sh(20).toDouble()

    //Scalable width
    sizeConfig.sw(20).toDouble()

```

### NeoButton
The `onClick` and `text` fields are required

```dart
    NeoButton(
        onClick: () {},
        text: 'Tap',
    )

```

### NeoText
The `text` field is required

```dart
    NeoText(
        text: "Your text",
    )

```

### YMargin
Provides vertical spacing in your UI


```dart
    YMargin(height: 10)

```

### XMargin
Provides horizontal spacing in your UI


```dart
    XMargin(height: 10)

```
