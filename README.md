![logo](https://github.com/aloisdeniel/spaces/raw/master/logo.png)

# Spaces

<p>
  <a href="https://pub.dartlang.org/packages/spaces"><img src="https://img.shields.io/pub/v/spaces.svg"></a>
  <a href="https://www.buymeacoffee.com/aloisdeniel">
    <img src="https://img.shields.io/badge/$-donate-ff69b4.svg?maxAge=2592000&amp;style=flat">
  </a>
</p>

Defining global spacing constants for building consistent and responsive apps.

## Install

Add the dependency to your `pubspec.yaml` :

```yaml
dependencies:
    spaces: <version>
```

## Quick start

```dart
return MaterialApp(
    // Defining
    builder: (context, child) => Spacing(
        dataBuilder: (context) {
          final mediaQuery = MediaQuery.of(context);
          if (mediaQuery.size.width > 500) {
            return SpacingData.generate(30);
          }
          return SpacingData.generate(10);
        },
        child: child,
    ),
    home:Builder(builder: (context) {
        // Using
        final spacing = Spacing.of(context);
        return SpacedColumn.normal(
            padding: spacing.insets.all.semiBig,
            children: <Widget>[
                Text('hello'),
                Space.big(),
                Text('world'),
            ],
        );
      })
    ),
)
```

# Usage

## Configuring spacing 

A `Spacing` widget should declare a global spacing configuration for your application.

```dart
return MaterialApp(
    builder: (context, child) => Spacing.fixed(
        data: SpacingData.generate(10.0), // This generates a set of spacing constants for your apps, from a base space of `10.0`.
        child: child,
    ),
    /// ...
)
```

## Responsive spacing

You can define the `dataBuilder` property of the `Spacing` constructor to generate a configuration from the given context.

```dart
Spacing(
    dataBuilder: (context) {
        final mediaQuery = MediaQuery.of(context);
        return SpacingData.generate(mediaQuery.size.width > 300.0 ? 20.0 : 10.0),
    },
    child: child,
)
```

## Using constants

To access various spacing constants, simply use the `Spacing.of(context)` getter, or the `context.spacing()` extension method.

```dart
final spacing = Spacing.of(context);
// spacing.spaces.semiBig
```

### Size variants

There are seven availables space constants : `extraSmall`, `small`, `semiSmall`, `normal`, `semiBig`, `big`, `extraBig`;

```dart
final spacing = Spacing.of(context);
return SizedBox(
    width: spacing.spaces.semiSmall,
);
```

### Insets helpers

You have `EdgeInsets` presets available from `<spacing>.insets.<selector>.<size>`.

The available selectors are : `all`, `horizontal`, `vertical`, `onlyLeft`, `onlyTop`, `onlyRight`, `onlyBottom`, `exceptLeft`, `exceptRight`, `exceptTop`, `exceptBottom`.

```dart
final spacing = Spacing.of(context);
return Padding(
    padding: spacing.insets.exceptLeft.semiBig,
    child: Text('Hello'),
);
```

## Widgets

### Space

The `Space` widgets uses [gap](https://pub.dev/packages/gap) under the hood to define a space in a `Flex`, `Column`, `Row` or `Scrollable` (such as `ListView`).

```dart
return Column(
    children: [
        Text('hello'),
        const Space.semiSmall(),
        Text('world'),
    ],
);
```

### SpacedFlex / SpacedColumn / SpacedRow

Like `Flex` / `Column` / `Row`, but with additional `padding` and `spaceBetween` properties.

```dart
final spacing = Spacing.of(context);
return SpacedColumn.small(
    padding: spacing.insets.all.normal,
    children: [
        Text('hello'),
        Text('world'),
    ],
);
```