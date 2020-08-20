import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'spacing_data.freezed.dart';

/// Defines the configuration of the overall visual [Spacing] for a
/// widget subtree within the app.
@freezed
abstract class SpacingData with _$SpacingData {
  /// Generates all [spaces] and [insets] from a given
  /// [normal] base space value.
  ///
  /// Several types of spaces are available :
  ///
  /// * [spaces] : `double` values
  /// * [insets] : `EdgeInsets` values
  ///
  /// The values follows this calculation :
  ///
  //  * extraSmall: `normal * 0.2`
  //  * small: `normal * 0.4`
  //  * semiSmall: `normal * 0.8`
  //  * semiBig: `normal * 1.4`
  //  * big: `normal * 2.0`
  //  * extraBig: `normal * 4.0`
  factory SpacingData.generate(double normal) {
    return SpacingData.fromSpaces(
      SizeSet(
        extraSmall: normal * 0.2,
        small: normal * 0.4,
        semiSmall: normal * 0.8,
        normal: normal,
        semiBig: normal * 1.4,
        big: normal * 2.0,
        extraBig: normal * 4.0,
      ),
    );
  }

  /// Generates all [insets] from the given [spaces].
  factory SpacingData.fromSpaces(SizeSet<double> spaces) {
    return SpacingData(
      spaces: spaces,
      insets: SpacingInsetsData.fromSpaces(spaces),
    );
  }

  /// A spacing configuration from the given [spaces] and [insets].
  const factory SpacingData({
    @required SpacingInsetsData insets,
    @required SizeSet<double> spaces,
  }) = _SpacingData;
}

/// Defines the edge insets configuration.
///
/// A set of presets are available :
///
/// * [all] equivalent of `EdgeInsets.all(<size>)`
/// * [vertical] equivalent of `EdgeInsets.symmetric(vertical: <size>)`
/// * [horizontal] equivalent of `EdgeInsets.symmetric(horizontal: <size>)`
/// * [onlyRight] equivalent of `EdgeInsets.only(right: <size>)`
/// * [onlyLeft] equivalent of `EdgeInsets.only(left: <size>)`
/// * [onlyTop] equivalent of `EdgeInsets.only(top: <size>)`
/// * [onlyBottom] equivalent of `EdgeInsets.only(bottom: <size>)`
/// * [exceptRight] equivalent of `EdgeInsets.fromLTRB(<size>,<size>,0,<size>)`
/// * [exceptLeft] equivalent of `EdgeInsets.fromLTRB(0,<size>,<size>,<size>)`
/// * [exceptTop] equivalent of `EdgeInsets.fromLTRB(<size>,0,<size>,<size>)`
/// * [exceptBottom] equivalent of `EdgeInsets.fromLTRB(<size>,<size>,<size>,0)`
@freezed
abstract class SpacingInsetsData with _$SpacingInsetsData {
  factory SpacingInsetsData.fromSpaces(SizeSet<double> spaces) {
    return SpacingInsetsData(
      all: SizeSet(
        extraSmall: EdgeInsets.all(spaces.extraSmall),
        small: EdgeInsets.all(spaces.small),
        semiSmall: EdgeInsets.all(spaces.semiSmall),
        normal: EdgeInsets.all(spaces.normal),
        semiBig: EdgeInsets.all(spaces.semiBig),
        big: EdgeInsets.all(spaces.big),
        extraBig: EdgeInsets.all(spaces.big),
      ),
      vertical: SizeSet(
        extraSmall: EdgeInsets.symmetric(vertical: spaces.extraSmall),
        small: EdgeInsets.symmetric(vertical: spaces.small),
        semiSmall: EdgeInsets.symmetric(vertical: spaces.semiSmall),
        normal: EdgeInsets.symmetric(vertical: spaces.normal),
        semiBig: EdgeInsets.symmetric(vertical: spaces.semiBig),
        big: EdgeInsets.symmetric(vertical: spaces.big),
        extraBig: EdgeInsets.symmetric(vertical: spaces.big),
      ),
      horizontal: SizeSet(
        extraSmall: EdgeInsets.symmetric(horizontal: spaces.extraSmall),
        small: EdgeInsets.symmetric(horizontal: spaces.small),
        semiSmall: EdgeInsets.symmetric(horizontal: spaces.semiSmall),
        normal: EdgeInsets.symmetric(horizontal: spaces.normal),
        semiBig: EdgeInsets.symmetric(horizontal: spaces.semiBig),
        big: EdgeInsets.symmetric(horizontal: spaces.big),
        extraBig: EdgeInsets.symmetric(horizontal: spaces.big),
      ),
      onlyRight: SizeSet(
        extraSmall: EdgeInsets.only(right: spaces.extraSmall),
        small: EdgeInsets.only(right: spaces.small),
        semiSmall: EdgeInsets.only(right: spaces.semiSmall),
        normal: EdgeInsets.only(right: spaces.normal),
        semiBig: EdgeInsets.only(right: spaces.semiBig),
        big: EdgeInsets.only(right: spaces.big),
        extraBig: EdgeInsets.only(right: spaces.big),
      ),
      onlyLeft: SizeSet(
        extraSmall: EdgeInsets.only(left: spaces.extraSmall),
        small: EdgeInsets.only(left: spaces.small),
        semiSmall: EdgeInsets.only(left: spaces.semiSmall),
        normal: EdgeInsets.only(left: spaces.normal),
        semiBig: EdgeInsets.only(left: spaces.semiBig),
        big: EdgeInsets.only(left: spaces.big),
        extraBig: EdgeInsets.only(left: spaces.big),
      ),
      onlyBottom: SizeSet(
        extraSmall: EdgeInsets.only(bottom: spaces.extraSmall),
        small: EdgeInsets.only(bottom: spaces.small),
        semiSmall: EdgeInsets.only(bottom: spaces.semiSmall),
        normal: EdgeInsets.only(bottom: spaces.normal),
        semiBig: EdgeInsets.only(bottom: spaces.semiBig),
        big: EdgeInsets.only(bottom: spaces.big),
        extraBig: EdgeInsets.only(bottom: spaces.big),
      ),
      onlyTop: SizeSet(
        extraSmall: EdgeInsets.only(top: spaces.extraSmall),
        small: EdgeInsets.only(top: spaces.small),
        semiSmall: EdgeInsets.only(top: spaces.semiSmall),
        normal: EdgeInsets.only(top: spaces.normal),
        semiBig: EdgeInsets.only(top: spaces.semiBig),
        big: EdgeInsets.only(top: spaces.big),
        extraBig: EdgeInsets.only(top: spaces.big),
      ),
      exceptBottom: SizeSet(
        extraSmall: EdgeInsets.fromLTRB(
          spaces.extraSmall,
          spaces.extraSmall,
          spaces.extraSmall,
          0,
        ),
        small: EdgeInsets.fromLTRB(
          spaces.small,
          spaces.small,
          spaces.small,
          0,
        ),
        semiSmall: EdgeInsets.fromLTRB(
          spaces.semiSmall,
          spaces.semiSmall,
          spaces.semiSmall,
          0,
        ),
        normal: EdgeInsets.fromLTRB(
          spaces.normal,
          spaces.normal,
          spaces.normal,
          0,
        ),
        semiBig: EdgeInsets.fromLTRB(
          spaces.semiBig,
          spaces.semiBig,
          spaces.semiBig,
          0,
        ),
        big: EdgeInsets.fromLTRB(
          spaces.big,
          spaces.big,
          spaces.big,
          0,
        ),
        extraBig: EdgeInsets.fromLTRB(
          spaces.extraBig,
          spaces.extraBig,
          spaces.extraBig,
          0,
        ),
      ),
      exceptLeft: SizeSet(
        extraSmall: EdgeInsets.fromLTRB(
          0,
          spaces.extraSmall,
          spaces.extraSmall,
          spaces.extraSmall,
        ),
        small: EdgeInsets.fromLTRB(
          0,
          spaces.small,
          spaces.small,
          spaces.small,
        ),
        semiSmall: EdgeInsets.fromLTRB(
          0,
          spaces.semiSmall,
          spaces.semiSmall,
          spaces.semiSmall,
        ),
        normal: EdgeInsets.fromLTRB(
          0,
          spaces.normal,
          spaces.normal,
          spaces.normal,
        ),
        semiBig: EdgeInsets.fromLTRB(
          0,
          spaces.semiBig,
          spaces.semiBig,
          spaces.semiBig,
        ),
        big: EdgeInsets.fromLTRB(
          0,
          spaces.big,
          spaces.big,
          spaces.big,
        ),
        extraBig: EdgeInsets.fromLTRB(
          0,
          spaces.extraBig,
          spaces.extraBig,
          spaces.extraBig,
        ),
      ),
      exceptRight: SizeSet(
        extraSmall: EdgeInsets.fromLTRB(
          spaces.extraSmall,
          spaces.extraSmall,
          0,
          spaces.extraSmall,
        ),
        small: EdgeInsets.fromLTRB(
          spaces.small,
          spaces.small,
          0,
          spaces.small,
        ),
        semiSmall: EdgeInsets.fromLTRB(
          spaces.semiSmall,
          spaces.semiSmall,
          0,
          spaces.semiSmall,
        ),
        normal: EdgeInsets.fromLTRB(
          spaces.normal,
          spaces.normal,
          0,
          spaces.normal,
        ),
        semiBig: EdgeInsets.fromLTRB(
          spaces.semiBig,
          spaces.semiBig,
          0,
          spaces.semiBig,
        ),
        big: EdgeInsets.fromLTRB(
          spaces.big,
          spaces.big,
          0,
          spaces.big,
        ),
        extraBig: EdgeInsets.fromLTRB(
          spaces.extraBig,
          spaces.extraBig,
          0,
          spaces.extraBig,
        ),
      ),
      exceptTop: SizeSet(
        extraSmall: EdgeInsets.fromLTRB(
          spaces.extraSmall,
          0,
          spaces.extraSmall,
          spaces.extraSmall,
        ),
        small: EdgeInsets.fromLTRB(
          spaces.small,
          0,
          spaces.small,
          spaces.small,
        ),
        semiSmall: EdgeInsets.fromLTRB(
          spaces.semiSmall,
          0,
          spaces.semiSmall,
          spaces.semiSmall,
        ),
        normal: EdgeInsets.fromLTRB(
          spaces.normal,
          0,
          spaces.normal,
          spaces.normal,
        ),
        semiBig: EdgeInsets.fromLTRB(
          spaces.semiBig,
          0,
          spaces.semiBig,
          spaces.semiBig,
        ),
        big: EdgeInsets.fromLTRB(
          spaces.big,
          0,
          spaces.big,
          spaces.big,
        ),
        extraBig: EdgeInsets.fromLTRB(
          spaces.extraBig,
          0,
          spaces.extraBig,
          spaces.extraBig,
        ),
      ),
    );
  }

  const factory SpacingInsetsData({
    @required SizeSet<EdgeInsets> all,
    @required SizeSet<EdgeInsets> horizontal,
    @required SizeSet<EdgeInsets> vertical,
    @required SizeSet<EdgeInsets> onlyRight,
    @required SizeSet<EdgeInsets> onlyTop,
    @required SizeSet<EdgeInsets> onlyBottom,
    @required SizeSet<EdgeInsets> onlyLeft,
    @required SizeSet<EdgeInsets> exceptLeft,
    @required SizeSet<EdgeInsets> exceptRight,
    @required SizeSet<EdgeInsets> exceptTop,
    @required SizeSet<EdgeInsets> exceptBottom,
  }) = _SpacingInsetsData;
}

/// A set of size variants, from [extraSmall] to [extraBig]
@freezed
abstract class SizeSet<T> with _$SizeSet<T> {
  /// The user is currently updating the login form.
  const factory SizeSet({
    @required T extraSmall,
    @required T small,
    @required T semiSmall,
    @required T normal,
    @required T semiBig,
    @required T big,
    @required T extraBig,
  }) = _SizeSet;
}

enum SpaceSize {
  extraSmall,
  small,
  semiSmall,
  normal,
  semiBig,
  big,
  extraBig,
}
