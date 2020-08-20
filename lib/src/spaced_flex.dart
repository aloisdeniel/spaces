import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import 'spacing.dart';
import 'spacing_data.dart';

/// Create a new list of [widget]s but inserting a [Gap] width the given
/// [spaceBetween] space widget between each child of the [children] list.
List<Widget> spacedWidgets({
  @required List<Widget> children,
  @required double spaceBetween,
}) {
  if (spaceBetween == null) return children;
  if (children.isEmpty) return const <Widget>[];
  return Iterable.generate(children.length * 2 - 1, (i) {
    if ((i % 2) == 1) {
      return Gap(spaceBetween);
    }
    return children[i ~/ 2];
  }).toList();
}

/// A widget that behaves like a [Flex], but with the possibility to
/// add a [spaceBetween] children, and a [padding] around them.
///
/// See also:
///
///  * [SpacedColumn], the space version of the [Column] equivalent.
///  * [SpacedRow], the space version of the [Row] equivalent.
///  * [Flex], the base widget this one is based on.
class SpacedFlex extends StatelessWidget {
  /// The amount of space between children.
  ///
  /// If null, then [spaceBetween] should be defined.
  final SpaceSize sizeBetween;

  /// The amount of space between children.
  ///
  /// If null, then [sizeBetween] should be defined.
  final double spaceBetween;

  /// The amount of space around children.
  final EdgeInsets padding;

  /// {@macro flutter.widgets.Flex.children}
  final List<Widget> children;

  /// {@macro flutter.widgets.Flex.direction}
  final Axis direction;

  /// {@macro flutter.widgets.Flex.mainAxisAlignment}
  final MainAxisAlignment mainAxisAlignment;

  /// {@macro flutter.widgets.Flex.mainAxisSize}
  final MainAxisSize mainAxisSize;

  /// {@macro flutter.widgets.Flex.crossAxisAlignment}
  final CrossAxisAlignment crossAxisAlignment;

  /// {@macro flutter.widgets.Flex.textDirection}
  final TextDirection textDirection;

  /// {@macro flutter.widgets.Flex.verticalDirection}
  final VerticalDirection verticalDirection;

  /// {@macro flutter.widgets.Flex.textBaseline}
  final TextBaseline textBaseline;

  /// {@macro flutter.widgets.Flex.clipBehavior}
  final Clip clipBehavior;

  /// Creates a flex layout with spaces.
  ///
  /// The [direction] is required.
  ///
  /// The [direction], [mainAxisAlignment], [crossAxisAlignment], and
  /// [verticalDirection] arguments must not be null. If [crossAxisAlignment] is
  /// [CrossAxisAlignment.baseline], then [textBaseline] must not be null.
  ///
  /// The [textDirection] argument defaults to the ambient [Directionality], if
  /// any. If there is no ambient directionality, and a text direction is going
  /// to be necessary to decide which direction to lay the children in or to
  /// disambiguate `start` or `end` values for the main or cross axis
  /// directions, the [textDirection] must not be null.
  ///
  /// A [padding] can be defined to add space around children.
  ///
  /// The [spaceBetween] will add this amount of space between all children.
  const SpacedFlex({
    Key key,
    @required this.direction,
    this.clipBehavior = Clip.hardEdge,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.children,
    this.spaceBetween,
    this.padding,
  }) : sizeBetween = null;

  /// Creates a flex layout with an `extraSmall` space between children.
  ///
  /// The [direction] is required.
  ///
  /// The [direction], [mainAxisAlignment], [crossAxisAlignment], and
  /// [verticalDirection] arguments must not be null. If [crossAxisAlignment] is
  /// [CrossAxisAlignment.baseline], then [textBaseline] must not be null.
  ///
  /// The [textDirection] argument defaults to the ambient [Directionality], if
  /// any. If there is no ambient directionality, and a text direction is going
  /// to be necessary to decide which direction to lay the children in or to
  /// disambiguate `start` or `end` values for the main or cross axis
  /// directions, the [textDirection] must not be null.
  ///
  /// A [padding] can be defined to add space around children.
  const SpacedFlex.extraSmall({
    Key key,
    @required this.direction,
    this.clipBehavior = Clip.hardEdge,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.children,
    this.padding,
  })  : sizeBetween = SpaceSize.extraSmall,
        spaceBetween = null;

  /// Creates a flex layout with a `small` space between children.
  ///
  /// The [direction] is required.
  ///
  /// The [direction], [mainAxisAlignment], [crossAxisAlignment], and
  /// [verticalDirection] arguments must not be null. If [crossAxisAlignment] is
  /// [CrossAxisAlignment.baseline], then [textBaseline] must not be null.
  ///
  /// The [textDirection] argument defaults to the ambient [Directionality], if
  /// any. If there is no ambient directionality, and a text direction is going
  /// to be necessary to decide which direction to lay the children in or to
  /// disambiguate `start` or `end` values for the main or cross axis
  /// directions, the [textDirection] must not be null.
  ///
  /// A [padding] can be defined to add space around children.
  const SpacedFlex.small({
    Key key,
    @required this.direction,
    this.clipBehavior = Clip.hardEdge,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.children,
    this.padding,
  })  : sizeBetween = SpaceSize.small,
        spaceBetween = null;

  /// Creates a flex layout with a `semiSmall` space between children.
  ///
  /// The [direction] is required.
  ///
  /// The [direction], [mainAxisAlignment], [crossAxisAlignment], and
  /// [verticalDirection] arguments must not be null. If [crossAxisAlignment] is
  /// [CrossAxisAlignment.baseline], then [textBaseline] must not be null.
  ///
  /// The [textDirection] argument defaults to the ambient [Directionality], if
  /// any. If there is no ambient directionality, and a text direction is going
  /// to be necessary to decide which direction to lay the children in or to
  /// disambiguate `start` or `end` values for the main or cross axis
  /// directions, the [textDirection] must not be null.
  ///
  /// A [padding] can be defined to add space around children.
  const SpacedFlex.semiSmall({
    Key key,
    @required this.direction,
    this.clipBehavior = Clip.hardEdge,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.children,
    this.padding,
  })  : sizeBetween = SpaceSize.semiSmall,
        spaceBetween = null;

  /// Creates a flex layout with a `normal` space between children.
  ///
  /// The [direction] is required.
  ///
  /// The [direction], [mainAxisAlignment], [crossAxisAlignment], and
  /// [verticalDirection] arguments must not be null. If [crossAxisAlignment] is
  /// [CrossAxisAlignment.baseline], then [textBaseline] must not be null.
  ///
  /// The [textDirection] argument defaults to the ambient [Directionality], if
  /// any. If there is no ambient directionality, and a text direction is going
  /// to be necessary to decide which direction to lay the children in or to
  /// disambiguate `start` or `end` values for the main or cross axis
  /// directions, the [textDirection] must not be null.
  ///
  /// A [padding] can be defined to add space around children.
  const SpacedFlex.normal({
    Key key,
    @required this.direction,
    this.clipBehavior = Clip.hardEdge,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.children,
    this.padding,
  })  : sizeBetween = SpaceSize.normal,
        spaceBetween = null;

  /// Creates a flex layout with a `semiBig` space between children.
  ///
  /// The [direction] is required.
  ///
  /// The [direction], [mainAxisAlignment], [crossAxisAlignment], and
  /// [verticalDirection] arguments must not be null. If [crossAxisAlignment] is
  /// [CrossAxisAlignment.baseline], then [textBaseline] must not be null.
  ///
  /// The [textDirection] argument defaults to the ambient [Directionality], if
  /// any. If there is no ambient directionality, and a text direction is going
  /// to be necessary to decide which direction to lay the children in or to
  /// disambiguate `start` or `end` values for the main or cross axis
  /// directions, the [textDirection] must not be null.
  ///
  /// A [padding] can be defined to add space around children.
  const SpacedFlex.semiBig({
    Key key,
    @required this.direction,
    this.clipBehavior = Clip.hardEdge,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.children,
    this.padding,
  })  : sizeBetween = SpaceSize.semiBig,
        spaceBetween = null;

  /// Creates a flex layout with a `big` space between children.
  ///
  /// The [direction] is required.
  ///
  /// The [direction], [mainAxisAlignment], [crossAxisAlignment], and
  /// [verticalDirection] arguments must not be null. If [crossAxisAlignment] is
  /// [CrossAxisAlignment.baseline], then [textBaseline] must not be null.
  ///
  /// The [textDirection] argument defaults to the ambient [Directionality], if
  /// any. If there is no ambient directionality, and a text direction is going
  /// to be necessary to decide which direction to lay the children in or to
  /// disambiguate `start` or `end` values for the main or cross axis
  /// directions, the [textDirection] must not be null.
  ///
  /// A [padding] can be defined to add space around children.
  const SpacedFlex.big({
    Key key,
    @required this.direction,
    this.clipBehavior = Clip.hardEdge,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.children,
    this.padding,
  })  : sizeBetween = SpaceSize.big,
        spaceBetween = null;

  /// Creates a flex layout with an `extraBig` space between children.
  ///
  /// The [direction] is required.
  ///
  /// The [direction], [mainAxisAlignment], [crossAxisAlignment], and
  /// [verticalDirection] arguments must not be null. If [crossAxisAlignment] is
  /// [CrossAxisAlignment.baseline], then [textBaseline] must not be null.
  ///
  /// The [textDirection] argument defaults to the ambient [Directionality], if
  /// any. If there is no ambient directionality, and a text direction is going
  /// to be necessary to decide which direction to lay the children in or to
  /// disambiguate `start` or `end` values for the main or cross axis
  /// directions, the [textDirection] must not be null.
  ///
  /// A [padding] can be defined to add space around children.
  const SpacedFlex.extraBig({
    Key key,
    @required this.direction,
    this.clipBehavior = Clip.hardEdge,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.children,
    this.padding,
  })  : sizeBetween = SpaceSize.extraBig,
        spaceBetween = null;

  @override
  Widget build(BuildContext context) {
    var spaceBetween = this.spaceBetween;
    if (spaceBetween == null) {
      var sizeBetween = this.sizeBetween ?? SpaceSize.normal;
      spaceBetween = sizeBetween.toPoints(context);
    }

    Widget result = Flex(
      clipBehavior: clipBehavior,
      direction: direction,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: spacedWidgets(
        children: children,
        spaceBetween: spaceBetween,
      ),
    );

    if (padding != null && padding != EdgeInsets.zero) {
      result = Padding(
        child: result,
        padding: padding,
      );
    }

    return result;
  }
}

/// A widget that behaves like a [Column], but with the possibility to
/// add a [spaceBetween] children, and a [padding] around them.
///
/// See also:
///
///  * [SpacedRow], the space version of the [Row] equivalent.
///  * [SpacedFlex], the base widget this one is based on.
class SpacedColumn extends SpacedFlex {
  const SpacedColumn({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    List<Widget> children,
    double spaceBetween,
    EdgeInsets padding,
    Clip clipBehavior = Clip.hardEdge,
  }) : super(
          children: children,
          key: key,
          direction: Axis.vertical,
          clipBehavior: clipBehavior,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
          spaceBetween: spaceBetween,
          padding: padding,
        );

  const SpacedColumn.extraSmall({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    List<Widget> children,
    EdgeInsets padding,
    Clip clipBehavior = Clip.hardEdge,
  }) : super.extraSmall(
          children: children,
          key: key,
          direction: Axis.vertical,
          clipBehavior: clipBehavior,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
          padding: padding,
        );

  const SpacedColumn.small({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    List<Widget> children,
    EdgeInsets padding,
    Clip clipBehavior = Clip.hardEdge,
  }) : super.small(
          children: children,
          key: key,
          direction: Axis.vertical,
          clipBehavior: clipBehavior,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
          padding: padding,
        );

  const SpacedColumn.semiSmall({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    List<Widget> children,
    EdgeInsets padding,
    Clip clipBehavior = Clip.hardEdge,
  }) : super.semiSmall(
          children: children,
          key: key,
          direction: Axis.vertical,
          clipBehavior: clipBehavior,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
          padding: padding,
        );

  const SpacedColumn.normal({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    List<Widget> children,
    EdgeInsets padding,
    Clip clipBehavior = Clip.hardEdge,
  }) : super.normal(
          children: children,
          key: key,
          direction: Axis.vertical,
          clipBehavior: clipBehavior,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
          padding: padding,
        );

  const SpacedColumn.semiBig({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    List<Widget> children,
    EdgeInsets padding,
    Clip clipBehavior = Clip.hardEdge,
  }) : super.semiBig(
          children: children,
          key: key,
          direction: Axis.vertical,
          clipBehavior: clipBehavior,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
          padding: padding,
        );

  const SpacedColumn.big({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    List<Widget> children,
    EdgeInsets padding,
    Clip clipBehavior = Clip.hardEdge,
  }) : super.big(
          children: children,
          key: key,
          direction: Axis.vertical,
          clipBehavior: clipBehavior,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
          padding: padding,
        );

  const SpacedColumn.extraBig({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    List<Widget> children,
    EdgeInsets padding,
    Clip clipBehavior = Clip.hardEdge,
  }) : super.extraBig(
          children: children,
          key: key,
          direction: Axis.vertical,
          clipBehavior: clipBehavior,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
          padding: padding,
        );
}

/// A widget that behaves like a [Row], but with the possibility to
/// add a [spaceBetween] children, and a [padding] around them.
///
/// See also:
///
///  * [SpacedRow], the space version of the [Row] equivalent.
///  * [SpacedFlex], the base widget this one is based on.
class SpacedRow extends SpacedFlex {
  const SpacedRow({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    List<Widget> children,
    double spaceBetween,
    EdgeInsets padding,
    Clip clipBehavior = Clip.hardEdge,
  }) : super(
          children: children,
          key: key,
          clipBehavior: clipBehavior,
          direction: Axis.horizontal,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
          spaceBetween: spaceBetween,
          padding: padding,
        );

  const SpacedRow.extraSmall({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    List<Widget> children,
    EdgeInsets padding,
    Clip clipBehavior = Clip.hardEdge,
  }) : super.extraSmall(
          children: children,
          key: key,
          direction: Axis.horizontal,
          clipBehavior: clipBehavior,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
          padding: padding,
        );

  const SpacedRow.small({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    List<Widget> children,
    EdgeInsets padding,
    Clip clipBehavior = Clip.hardEdge,
  }) : super.small(
          children: children,
          key: key,
          direction: Axis.horizontal,
          clipBehavior: clipBehavior,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
          padding: padding,
        );

  const SpacedRow.semiSmall({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    List<Widget> children,
    EdgeInsets padding,
    Clip clipBehavior = Clip.hardEdge,
  }) : super.semiSmall(
          children: children,
          key: key,
          direction: Axis.horizontal,
          clipBehavior: clipBehavior,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
          padding: padding,
        );

  const SpacedRow.normal({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    List<Widget> children,
    EdgeInsets padding,
    Clip clipBehavior = Clip.hardEdge,
  }) : super.normal(
          children: children,
          key: key,
          direction: Axis.horizontal,
          clipBehavior: clipBehavior,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
          padding: padding,
        );

  const SpacedRow.semiBig({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    List<Widget> children,
    EdgeInsets padding,
    Clip clipBehavior = Clip.hardEdge,
  }) : super.semiBig(
          children: children,
          key: key,
          direction: Axis.horizontal,
          clipBehavior: clipBehavior,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
          padding: padding,
        );

  const SpacedRow.big({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    List<Widget> children,
    EdgeInsets padding,
    Clip clipBehavior = Clip.hardEdge,
  }) : super.big(
          children: children,
          key: key,
          direction: Axis.horizontal,
          clipBehavior: clipBehavior,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
          padding: padding,
        );

  const SpacedRow.extraBig({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    List<Widget> children,
    EdgeInsets padding,
    Clip clipBehavior = Clip.hardEdge,
  }) : super.extraBig(
          children: children,
          key: key,
          direction: Axis.horizontal,
          clipBehavior: clipBehavior,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
          padding: padding,
        );
}
