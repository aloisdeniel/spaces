import 'package:flutter/widgets.dart';
import 'package:spaces/src/spacing_data.dart';

typedef DataBuilder<T> = T Function(BuildContext context);

/// Applies a global spacing configuration to descendant widgets.
///
/// See also:
///
///  * [SpacingData], which describes the actual spacing configuration
///  * [Space], a gap widget that uses the spacing configuration
///  * [SpacedFlex], a flex widget that uses the spacing configuration
class Spacing extends StatelessWidget {
  final DataBuilder<SpacingData> dataBuilder;
  final Widget child;

  /// Applies the spacing resulting from the given [dataBuilder] to [child].
  ///
  /// The [dataBuilder] and [child] arguments must not be null.
  const Spacing({
    Key? key,
    required this.child,
    required this.dataBuilder,
  }) : super(key: key);

  /// Applies the given [data] to [child].
  ///
  /// The [data] and [child] arguments must not be null.
  Spacing.fixed({
    Key? key,
    required this.child,
    required SpacingData data,
  })   : assert(data != null),
        assert(child != null),
        dataBuilder = ((BuildContext context) => data),
        super(key: key);

  /// The data from the closest [Spacing] instance that encloses the given
  /// context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// @override
  /// Widget build(BuildContext context) {
  ///   return SizedBox(
  ///     height: Spacing.of(context).spaces.small,
  ///   );
  /// }
  /// ```
  ///
  /// When the [Spacing] is actually created in the same `build` function
  /// (possibly indirectly, e.g. as part of a [MaterialApp]), the `context`
  /// argument to the `build` function can't be used to find the [Spacing] (since
  /// it's "above" the widget being returned). In such cases, the following
  /// technique with a [Builder] can be used to provide a new scope with a
  /// [BuildContext] that is "under" the [Spacing]:
  ///
  /// ```dart
  /// @override
  /// Widget build(BuildContext context) {
  ///   return Spacing(
  ///     data: SpacingData.fixed(10.0),
  ///     body: Builder(
  ///       // Create an inner BuildContext so that we can refer to
  ///       // the Spacing with Spacing.of().
  ///       builder: (BuildContext context) {
  ///         return Center(
  ///           child:SizedBox(
  ///             height: Spacing.of(context).spaces.small,
  ///           ),
  ///         );
  ///       },
  ///     ),
  ///   );
  /// }
  /// ```
  static SpacingData of(BuildContext context) {
    final provider =
        context.dependOnInheritedWidgetOfExactType<_SpacingDataProvider>();
    assert(
      provider != null,
      'No Spacing in widget tree. Make sure that you declared a Spacing.',
    );
    return provider!.data;
  }

  @override
  Widget build(BuildContext context) {
    return _SpacingDataProvider(
      data: dataBuilder(context),
      child: child,
    );
  }
}

extension SpacingExtension on BuildContext {
  SpacingData spacing() => Spacing.of(this);
}

extension SpaceSizeExtension on SpaceSize {
  double toPoints(BuildContext context) {
    final spacing = context.spacing();
    switch (this) {
      case SpaceSize.extraSmall:
        return spacing.spaces.extraSmall;
      case SpaceSize.small:
        return spacing.spaces.small;
      case SpaceSize.semiSmall:
        return spacing.spaces.semiSmall;
      case SpaceSize.semiBig:
        return spacing.spaces.semiBig;
      case SpaceSize.big:
        return spacing.spaces.big;
      case SpaceSize.extraBig:
        return spacing.spaces.extraBig;
      default:
        return spacing.spaces.normal;
    }
  }
}

class _SpacingDataProvider extends InheritedWidget {
  final SpacingData data;
  const _SpacingDataProvider({
    Key? key,
    required Widget child,
    required this.data,
  }) : super(
          key: key,
          child: child,
        );

  @override
  bool updateShouldNotify(_SpacingDataProvider oldWidget) {
    return data != oldWidget.data;
  }
}
