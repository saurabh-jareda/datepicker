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


# DatePickerX

DatePickerX is a simple and customizable date picker for Flutter applications. It provides an easy way to select a single date using a modified Cupertino date picker, displayed in a bottom modal sheet. 

## Features

- Simple and intuitive interface for selecting a single date.
- Customizable date range with `firstDate` and `lastDate`.
- Supports different date formats and locales.
- Option to customize the appearance of the date picker, including colors and text styles.
- Ability to loop through dates.

## Installation

Add the following dependency to your `pubspec.yaml` file once the package is published on pub.dev:


```yaml
dependencies:
  datepickerx: latest_version
```
*Note: The section above is for future reference. Currently, the package is not published on pub.dev, so use it as a local package.*

For, use it as a remote package by adding the following to your pubspec.yaml file:

```yaml
dependencies:
  datepickerx:
    git:
      url: https://github.com/saurabh-jareda/my_packages
      path: package/datepickerx
```

or, use it as a local package by adding the following to your pubspec.yaml file:

```yaml
dependencies:
  datepickerx:
    path: your_package/datepickerx
```
*replace `you_package` with the `directory` where you put the `datepickerx` folder*

## Usage

To use the DatePickerX package, import it in your Dart file:

```dart
import 'package:datepickerx/datepickerx.dart';
```

Here's a simple example of how to use the date picker:

```dart
DateTime? _selectedDate;

ElevatedButton(
  onPressed: () async {
    var datePicked = await DatePicker.showSimpleDatePicker(
      context,
      titleText: "Select a date",
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
      initialDate: _selectedDate,
      dateFormat: "dd-MMMM-yyyy",
      locale: DateTimePickerLocale.en_us,
      looping: false,
      // Customize appearance
      // titleColor: Theme.of(context).colorScheme.tertiary,
      // itemColor: Theme.of(context).colorScheme.onSurface
    );
    setState(() {
      _selectedDate = datePicked;
    });
  },
  child: const Text("Show date picker"),
),
```

### Parameters

The `showSimpleDatePicker` function provides various parameters to customize the date picker:

- **context**: `BuildContext` - The build context to show the date picker.
- **firstDate**: `DateTime?` - The earliest date the user can select.
- **lastDate**: `DateTime?` - The latest date the user can select.
- **initialDate**: `DateTime?` - The initially selected date.
- **dateFormat**: `String?` - The format in which the date is displayed.
- **locale**: `DateTimePickerLocale` - The locale for the date picker (default is `en_us`).
- **pickerMode**: `DateTimePickerMode` - The mode of the date picker (default is `date`).
- **backgroundColor**: `Color?` - The background color of the date picker.
- **titleColor**: `Color?` - The color of the title text.
- **itemColor**: `Color?` - The color of the date items.
- **itemTextStyle**: `TextStyle?` - The text style for the date items.
- **titleText**: `String?` - The text displayed in the title.
- **confirmText**: `String?` - The text displayed on the confirm button.
- **cancelText**: `String?` - The text displayed on the cancel button.
- **looping**: `bool` - Whether the date items should loop (default is `false`).
- **reverse**: `bool` - Whether the date picker should be reversed (default is `false`).

The date picker is shown in a bottom modal sheet, making it easy to integrate into your app's UI.

## Example

Here is a more detailed example showing how to use the DatePickerX with all parameters:

```dart
DateTime? _selectedDate;

ElevatedButton(
  onPressed: () async {
    var datePicked = await DatePicker.showSimpleDatePicker(
      context,
      titleText: "Select a date",
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
      initialDate: _selectedDate,
      dateFormat: "dd-MMMM-yyyy",
      locale: DateTimePickerLocale.en_us,
      pickerMode: DateTimePickerMode.date,
      backgroundColor: Colors.white,
      titleColor: Colors.blue,
      itemColor: Colors.black,
      itemTextStyle: TextStyle(fontSize: 18),
      confirmText: "Confirm",
      cancelText: "Cancel",
      looping: false,
      reverse: false,
    );
    setState(() {
      _selectedDate = datePicked;
    });
  },
  child: const Text("Show date picker"),
),
```

With DatePickerX, you can provide a seamless date picking experience for your Flutter applications, tailored to your specific needs.
