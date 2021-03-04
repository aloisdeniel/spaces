import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import 'spacing.dart';
import 'spacing_data.dart';

/// A widget that takes a fixed amount of space in the direction of its parent.
///
/// It only works in the following cases:
/// - It is a descendant of a [Row], [Column], or [Flex],
/// and the path from the [Gap] widget to its enclosing [Row], [Column], or
/// [Flex] must contain only [StatelessWidget]s or [StatefulWidget]s (not other
/// kinds of widgets, like [RenderObjectWidget]s).
/// - It is a descendant of a [Scrollable].
///
/// See also:
///
///  * [Gap], the base widget on which this widget is based upon
///  * [SliverSpace], the sliver version of this widget.
class Space extends StatelessWidget {
  /// The amount of space this widget takes in the direction of its parent.
  ///
  /// For example:
  /// - If the parent is a [Column] this is the height of this widget.
  /// - If the parent is a [Row] this is the width of this widget.
  ///
  /// Must not be null and must be positive.
  ///
  /// If null, then [size] should be defined.
  final double? mainAxisExtent;

  /// The amount of space this widget takes in the opposite direction of the
  /// parent.
  ///
  /// For example:
  /// - If the parent is a [Column] this is the width of this widget.
  /// - If the parent is a [Row] this is the height of this widget.
  ///
  /// Must be positive or null. If it's null (the default) the cross axis extent
  /// will be the same as the constraints of the parent in the opposite
  /// direction.
  final double? crossAxisExtent;

  /// The color used to fill the gap.
  final Color? color;

  /// The amount of space from [Spacing] this widget takes in the direction of its parent.
  ///
  /// For example:
  /// - If the parent is a [Column] this is the height of this widget.
  /// - If the parent is a [Row] this is the width of this widget.
  ///
  /// Must not be null and must be positive.
  ///
  /// If null, then [mainAxisExtent] should be defined.
  final SpaceSize? size;

  /// Creates a widget that takes a fixed [mainAxisExtent] of space in the
  /// direction of its parent.
  ///
  /// The [mainAxisExtent] must not be null and must be positive.
  /// The [crossAxisExtent] must be either null or positive.
  const Space({
    Key? key,
    required double mainAxisExtent,
    this.crossAxisExtent,
    this.color,
  })  : mainAxisExtent = mainAxisExtent,
        size = null,
        assert(mainAxisExtent > 0),
        super(key: key);

  /// Creates a widget that takes an `extraSmall` amount of space in the
  /// direction of its parent.
  ///
  /// The spacing value is defined in the global [Spacing] definition.
  ///
  /// The [crossAxisExtent] must be either null or positive.
  const Space.extraSmall({
    this.crossAxisExtent,
    this.color,
  })  : size = SpaceSize.extraSmall,
        mainAxisExtent = null;

  /// Creates a widget that takes a `small` amount of space in the
  /// direction of its parent.
  ///
  /// The spacing value is defined in the global [Spacing] definition.
  ///
  /// The [crossAxisExtent] must be either null or positive.
  const Space.small({
    this.crossAxisExtent,
    this.color,
  })  : size = SpaceSize.small,
        mainAxisExtent = null;

  /// Creates a widget that takes a `semiSmall` amount of space in the
  /// direction of its parent.
  ///
  /// The spacing value is defined in the global [Spacing] definition.
  ///
  /// The [crossAxisExtent] must be either null or positive.
  const Space.semiSmall({
    this.crossAxisExtent,
    this.color,
  })  : size = SpaceSize.semiSmall,
        mainAxisExtent = null;

  /// Creates a widget that takes a `normal` amount of space in the
  /// direction of its parent.
  ///
  /// The spacing value is defined in the global [Spacing] definition.
  ///
  /// The [crossAxisExtent] must be either null or positive.
  const Space.normal({
    this.crossAxisExtent,
    this.color,
  })  : size = SpaceSize.normal,
        mainAxisExtent = null;

  /// Creates a widget that takes a `semiBig` amount of space in the
  /// direction of its parent.
  ///
  /// The spacing value is defined in the global [Spacing] definition.
  ///
  /// The [crossAxisExtent] must be either null or positive.
  const Space.semiBig({
    this.crossAxisExtent,
    this.color,
  })  : size = SpaceSize.semiBig,
        mainAxisExtent = null;

  /// Creates a widget that takes a `big` amount of space in the
  /// direction of its parent.
  ///
  /// The spacing value is defined in the global [Spacing] definition.
  ///
  /// The [crossAxisExtent] must be either null or positive.
  const Space.big({
    this.crossAxisExtent,
    this.color,
  })  : size = SpaceSize.big,
        mainAxisExtent = null;

  /// Creates a widget that takes an `extraBig` amount of space in the
  /// direction of its parent.
  ///
  /// The spacing value is defined in the global [Spacing] definition.
  ///
  /// The [crossAxisExtent] must be either null or positive.
  const Space.extraBig({
    this.crossAxisExtent,
    this.color,
  })  : size = SpaceSize.extraBig,
        mainAxisExtent = null;

  @override
  Widget build(BuildContext context) {
    var mainAxisExtent = this.mainAxisExtent;
    if (mainAxisExtent == null) {
      var size = this.size ?? SpaceSize.normal;
      mainAxisExtent = size.toPoints(context);
    }
    return Gap(
      mainAxisExtent,
      crossAxisExtent: crossAxisExtent,
      color: color,
    );
  }
}

/// A sliver that takes a fixed amount of space.
///
/// See also:
///
///  * [Space], the render box version of this widget.
class SliverSpace extends StatelessWidget {
  /// The amount of space this widget takes in the direction of its parent.
  ///
  /// For example:
  /// - If the parent is a [Column] this is the height of this widget.
  /// - If the parent is a [Row] this is the width of this widget.
  ///
  /// Must not be null and must be positive.
  ///
  /// If null, then [size] should be defined.
  final double? mainAxisExtent;

  /// The amount of space this widget takes in the opposite direction of the
  /// parent.
  ///
  /// Must be positive or null. If it's null (the default) the cross axis extent
  /// will be the same as the constraints of the parent in the opposite
  /// direction.
  final double? crossAxisExtent;

  /// The color used to fill the gap.
  final Color? color;

  /// The amount of space from [Spacing] this widget takes in the direction of its parent.
  ///
  /// Must not be null and must be positive.
  ///
  /// If null, then [mainAxisExtent] should be defined.
  final SpaceSize? size;

  /// Creates a widget that takes a fixed [mainAxisExtent] of space in the
  /// direction of its parent.
  ///
  /// The [mainAxisExtent] must not be null and must be positive.
  /// The [crossAxisExtent] must be either null or positive.
  const SliverSpace({
    Key? key,
    required double mainAxisExtent,
    this.crossAxisExtent,
    this.color,
  })  : mainAxisExtent = mainAxisExtent,
        size = null,
        assert(mainAxisExtent > 0),
        super(key: key);

  /// Creates a widget that takes an `extraSmall` amount of space in the
  /// direction of its parent.
  ///
  /// The spacing value is defined in the global [Spacing] definition.
  ///
  /// The [crossAxisExtent] must be either null or positive.
  const SliverSpace.extraSmall({
    this.crossAxisExtent,
    this.color,
  })  : size = SpaceSize.extraSmall,
        mainAxisExtent = null;

  /// Creates a widget that takes a `small` amount of space in the
  /// direction of its parent.
  ///
  /// The spacing value is defined in the global [Spacing] definition.
  ///
  /// The [crossAxisExtent] must be either null or positive.
  const SliverSpace.small({
    this.crossAxisExtent,
    this.color,
  })  : size = SpaceSize.small,
        mainAxisExtent = null;

  /// Creates a widget that takes a `semiSmall` amount of space in the
  /// direction of its parent.
  ///
  /// The spacing value is defined in the global [Spacing] definition.
  ///
  /// The [crossAxisExtent] must be either null or positive.
  const SliverSpace.semiSmall({
    this.crossAxisExtent,
    this.color,
  })  : size = SpaceSize.semiSmall,
        mainAxisExtent = null;

  /// Creates a widget that takes a `normal` amount of space in the
  /// direction of its parent.
  ///
  /// The spacing value is defined in the global [Spacing] definition.
  ///
  /// The [crossAxisExtent] must be either null or positive.
  const SliverSpace.normal({
    this.crossAxisExtent,
    this.color,
  })  : size = SpaceSize.normal,
        mainAxisExtent = null;

  /// Creates a widget that takes a `semiBig` amount of space in the
  /// direction of its parent.
  ///
  /// The spacing value is defined in the global [Spacing] definition.
  ///
  /// The [crossAxisExtent] must be either null or positive.
  const SliverSpace.semiBig({
    this.crossAxisExtent,
    this.color,
  })  : size = SpaceSize.semiBig,
        mainAxisExtent = null;

  /// Creates a widget that takes a `big` amount of space in the
  /// direction of its parent.
  ///
  /// The spacing value is defined in the global [Spacing] definition.
  ///
  /// The [crossAxisExtent] must be either null or positive.
  const SliverSpace.big({
    this.crossAxisExtent,
    this.color,
  })  : size = SpaceSize.big,
        mainAxisExtent = null;

  /// Creates a widget that takes an `extraBig` amount of space in the
  /// direction of its parent.
  ///
  /// The spacing value is defined in the global [Spacing] definition.
  ///
  /// The [crossAxisExtent] must be either null or positive.
  const SliverSpace.extraBig({
    this.crossAxisExtent,
    this.color,
  })  : size = SpaceSize.extraBig,
        mainAxisExtent = null;

  @override
  Widget build(BuildContext context) {
    var mainAxisExtent = this.mainAxisExtent;
    if (mainAxisExtent == null) {
      var size = this.size ?? SpaceSize.normal;
      mainAxisExtent = size.toPoints(context);
    }
    return SliverGap(mainAxisExtent);
  }
}
