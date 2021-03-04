// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'spacing_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SpacingDataTearOff {
  const _$SpacingDataTearOff();

  _SpacingData call(
      {required SpacingInsetsData insets, required SizeSet<double> spaces}) {
    return _SpacingData(
      insets: insets,
      spaces: spaces,
    );
  }
}

/// @nodoc
const $SpacingData = _$SpacingDataTearOff();

/// @nodoc
mixin _$SpacingData {
  SpacingInsetsData get insets => throw _privateConstructorUsedError;
  SizeSet<double> get spaces => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpacingDataCopyWith<SpacingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpacingDataCopyWith<$Res> {
  factory $SpacingDataCopyWith(
          SpacingData value, $Res Function(SpacingData) then) =
      _$SpacingDataCopyWithImpl<$Res>;
  $Res call({SpacingInsetsData insets, SizeSet<double> spaces});

  $SpacingInsetsDataCopyWith<$Res> get insets;
  $SizeSetCopyWith<double, $Res> get spaces;
}

/// @nodoc
class _$SpacingDataCopyWithImpl<$Res> implements $SpacingDataCopyWith<$Res> {
  _$SpacingDataCopyWithImpl(this._value, this._then);

  final SpacingData _value;
  // ignore: unused_field
  final $Res Function(SpacingData) _then;

  @override
  $Res call({
    Object? insets = freezed,
    Object? spaces = freezed,
  }) {
    return _then(_value.copyWith(
      insets: insets == freezed ? _value.insets : insets as SpacingInsetsData,
      spaces: spaces == freezed ? _value.spaces : spaces as SizeSet<double>,
    ));
  }

  @override
  $SpacingInsetsDataCopyWith<$Res> get insets {
    return $SpacingInsetsDataCopyWith<$Res>(_value.insets, (value) {
      return _then(_value.copyWith(insets: value));
    });
  }

  @override
  $SizeSetCopyWith<double, $Res> get spaces {
    return $SizeSetCopyWith<double, $Res>(_value.spaces, (value) {
      return _then(_value.copyWith(spaces: value));
    });
  }
}

/// @nodoc
abstract class _$SpacingDataCopyWith<$Res>
    implements $SpacingDataCopyWith<$Res> {
  factory _$SpacingDataCopyWith(
          _SpacingData value, $Res Function(_SpacingData) then) =
      __$SpacingDataCopyWithImpl<$Res>;
  @override
  $Res call({SpacingInsetsData insets, SizeSet<double> spaces});

  @override
  $SpacingInsetsDataCopyWith<$Res> get insets;
  @override
  $SizeSetCopyWith<double, $Res> get spaces;
}

/// @nodoc
class __$SpacingDataCopyWithImpl<$Res> extends _$SpacingDataCopyWithImpl<$Res>
    implements _$SpacingDataCopyWith<$Res> {
  __$SpacingDataCopyWithImpl(
      _SpacingData _value, $Res Function(_SpacingData) _then)
      : super(_value, (v) => _then(v as _SpacingData));

  @override
  _SpacingData get _value => super._value as _SpacingData;

  @override
  $Res call({
    Object? insets = freezed,
    Object? spaces = freezed,
  }) {
    return _then(_SpacingData(
      insets: insets == freezed ? _value.insets : insets as SpacingInsetsData,
      spaces: spaces == freezed ? _value.spaces : spaces as SizeSet<double>,
    ));
  }
}

/// @nodoc
class _$_SpacingData implements _SpacingData {
  const _$_SpacingData({required this.insets, required this.spaces});

  @override
  final SpacingInsetsData insets;
  @override
  final SizeSet<double> spaces;

  @override
  String toString() {
    return 'SpacingData(insets: $insets, spaces: $spaces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SpacingData &&
            (identical(other.insets, insets) ||
                const DeepCollectionEquality().equals(other.insets, insets)) &&
            (identical(other.spaces, spaces) ||
                const DeepCollectionEquality().equals(other.spaces, spaces)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(insets) ^
      const DeepCollectionEquality().hash(spaces);

  @JsonKey(ignore: true)
  @override
  _$SpacingDataCopyWith<_SpacingData> get copyWith =>
      __$SpacingDataCopyWithImpl<_SpacingData>(this, _$identity);
}

abstract class _SpacingData implements SpacingData {
  const factory _SpacingData(
      {required SpacingInsetsData insets,
      required SizeSet<double> spaces}) = _$_SpacingData;

  @override
  SpacingInsetsData get insets => throw _privateConstructorUsedError;
  @override
  SizeSet<double> get spaces => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SpacingDataCopyWith<_SpacingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SpacingInsetsDataTearOff {
  const _$SpacingInsetsDataTearOff();

  _SpacingInsetsData call(
      {required SizeSet<EdgeInsets> all,
      required SizeSet<EdgeInsets> horizontal,
      required SizeSet<EdgeInsets> vertical,
      required SizeSet<EdgeInsets> onlyRight,
      required SizeSet<EdgeInsets> onlyTop,
      required SizeSet<EdgeInsets> onlyBottom,
      required SizeSet<EdgeInsets> onlyLeft,
      required SizeSet<EdgeInsets> exceptLeft,
      required SizeSet<EdgeInsets> exceptRight,
      required SizeSet<EdgeInsets> exceptTop,
      required SizeSet<EdgeInsets> exceptBottom}) {
    return _SpacingInsetsData(
      all: all,
      horizontal: horizontal,
      vertical: vertical,
      onlyRight: onlyRight,
      onlyTop: onlyTop,
      onlyBottom: onlyBottom,
      onlyLeft: onlyLeft,
      exceptLeft: exceptLeft,
      exceptRight: exceptRight,
      exceptTop: exceptTop,
      exceptBottom: exceptBottom,
    );
  }
}

/// @nodoc
const $SpacingInsetsData = _$SpacingInsetsDataTearOff();

/// @nodoc
mixin _$SpacingInsetsData {
  SizeSet<EdgeInsets> get all => throw _privateConstructorUsedError;
  SizeSet<EdgeInsets> get horizontal => throw _privateConstructorUsedError;
  SizeSet<EdgeInsets> get vertical => throw _privateConstructorUsedError;
  SizeSet<EdgeInsets> get onlyRight => throw _privateConstructorUsedError;
  SizeSet<EdgeInsets> get onlyTop => throw _privateConstructorUsedError;
  SizeSet<EdgeInsets> get onlyBottom => throw _privateConstructorUsedError;
  SizeSet<EdgeInsets> get onlyLeft => throw _privateConstructorUsedError;
  SizeSet<EdgeInsets> get exceptLeft => throw _privateConstructorUsedError;
  SizeSet<EdgeInsets> get exceptRight => throw _privateConstructorUsedError;
  SizeSet<EdgeInsets> get exceptTop => throw _privateConstructorUsedError;
  SizeSet<EdgeInsets> get exceptBottom => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpacingInsetsDataCopyWith<SpacingInsetsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpacingInsetsDataCopyWith<$Res> {
  factory $SpacingInsetsDataCopyWith(
          SpacingInsetsData value, $Res Function(SpacingInsetsData) then) =
      _$SpacingInsetsDataCopyWithImpl<$Res>;
  $Res call(
      {SizeSet<EdgeInsets> all,
      SizeSet<EdgeInsets> horizontal,
      SizeSet<EdgeInsets> vertical,
      SizeSet<EdgeInsets> onlyRight,
      SizeSet<EdgeInsets> onlyTop,
      SizeSet<EdgeInsets> onlyBottom,
      SizeSet<EdgeInsets> onlyLeft,
      SizeSet<EdgeInsets> exceptLeft,
      SizeSet<EdgeInsets> exceptRight,
      SizeSet<EdgeInsets> exceptTop,
      SizeSet<EdgeInsets> exceptBottom});

  $SizeSetCopyWith<EdgeInsets, $Res> get all;
  $SizeSetCopyWith<EdgeInsets, $Res> get horizontal;
  $SizeSetCopyWith<EdgeInsets, $Res> get vertical;
  $SizeSetCopyWith<EdgeInsets, $Res> get onlyRight;
  $SizeSetCopyWith<EdgeInsets, $Res> get onlyTop;
  $SizeSetCopyWith<EdgeInsets, $Res> get onlyBottom;
  $SizeSetCopyWith<EdgeInsets, $Res> get onlyLeft;
  $SizeSetCopyWith<EdgeInsets, $Res> get exceptLeft;
  $SizeSetCopyWith<EdgeInsets, $Res> get exceptRight;
  $SizeSetCopyWith<EdgeInsets, $Res> get exceptTop;
  $SizeSetCopyWith<EdgeInsets, $Res> get exceptBottom;
}

/// @nodoc
class _$SpacingInsetsDataCopyWithImpl<$Res>
    implements $SpacingInsetsDataCopyWith<$Res> {
  _$SpacingInsetsDataCopyWithImpl(this._value, this._then);

  final SpacingInsetsData _value;
  // ignore: unused_field
  final $Res Function(SpacingInsetsData) _then;

  @override
  $Res call({
    Object? all = freezed,
    Object? horizontal = freezed,
    Object? vertical = freezed,
    Object? onlyRight = freezed,
    Object? onlyTop = freezed,
    Object? onlyBottom = freezed,
    Object? onlyLeft = freezed,
    Object? exceptLeft = freezed,
    Object? exceptRight = freezed,
    Object? exceptTop = freezed,
    Object? exceptBottom = freezed,
  }) {
    return _then(_value.copyWith(
      all: all == freezed ? _value.all : all as SizeSet<EdgeInsets>,
      horizontal: horizontal == freezed
          ? _value.horizontal
          : horizontal as SizeSet<EdgeInsets>,
      vertical: vertical == freezed
          ? _value.vertical
          : vertical as SizeSet<EdgeInsets>,
      onlyRight: onlyRight == freezed
          ? _value.onlyRight
          : onlyRight as SizeSet<EdgeInsets>,
      onlyTop:
          onlyTop == freezed ? _value.onlyTop : onlyTop as SizeSet<EdgeInsets>,
      onlyBottom: onlyBottom == freezed
          ? _value.onlyBottom
          : onlyBottom as SizeSet<EdgeInsets>,
      onlyLeft: onlyLeft == freezed
          ? _value.onlyLeft
          : onlyLeft as SizeSet<EdgeInsets>,
      exceptLeft: exceptLeft == freezed
          ? _value.exceptLeft
          : exceptLeft as SizeSet<EdgeInsets>,
      exceptRight: exceptRight == freezed
          ? _value.exceptRight
          : exceptRight as SizeSet<EdgeInsets>,
      exceptTop: exceptTop == freezed
          ? _value.exceptTop
          : exceptTop as SizeSet<EdgeInsets>,
      exceptBottom: exceptBottom == freezed
          ? _value.exceptBottom
          : exceptBottom as SizeSet<EdgeInsets>,
    ));
  }

  @override
  $SizeSetCopyWith<EdgeInsets, $Res> get all {
    return $SizeSetCopyWith<EdgeInsets, $Res>(_value.all, (value) {
      return _then(_value.copyWith(all: value));
    });
  }

  @override
  $SizeSetCopyWith<EdgeInsets, $Res> get horizontal {
    return $SizeSetCopyWith<EdgeInsets, $Res>(_value.horizontal, (value) {
      return _then(_value.copyWith(horizontal: value));
    });
  }

  @override
  $SizeSetCopyWith<EdgeInsets, $Res> get vertical {
    return $SizeSetCopyWith<EdgeInsets, $Res>(_value.vertical, (value) {
      return _then(_value.copyWith(vertical: value));
    });
  }

  @override
  $SizeSetCopyWith<EdgeInsets, $Res> get onlyRight {
    return $SizeSetCopyWith<EdgeInsets, $Res>(_value.onlyRight, (value) {
      return _then(_value.copyWith(onlyRight: value));
    });
  }

  @override
  $SizeSetCopyWith<EdgeInsets, $Res> get onlyTop {
    return $SizeSetCopyWith<EdgeInsets, $Res>(_value.onlyTop, (value) {
      return _then(_value.copyWith(onlyTop: value));
    });
  }

  @override
  $SizeSetCopyWith<EdgeInsets, $Res> get onlyBottom {
    return $SizeSetCopyWith<EdgeInsets, $Res>(_value.onlyBottom, (value) {
      return _then(_value.copyWith(onlyBottom: value));
    });
  }

  @override
  $SizeSetCopyWith<EdgeInsets, $Res> get onlyLeft {
    return $SizeSetCopyWith<EdgeInsets, $Res>(_value.onlyLeft, (value) {
      return _then(_value.copyWith(onlyLeft: value));
    });
  }

  @override
  $SizeSetCopyWith<EdgeInsets, $Res> get exceptLeft {
    return $SizeSetCopyWith<EdgeInsets, $Res>(_value.exceptLeft, (value) {
      return _then(_value.copyWith(exceptLeft: value));
    });
  }

  @override
  $SizeSetCopyWith<EdgeInsets, $Res> get exceptRight {
    return $SizeSetCopyWith<EdgeInsets, $Res>(_value.exceptRight, (value) {
      return _then(_value.copyWith(exceptRight: value));
    });
  }

  @override
  $SizeSetCopyWith<EdgeInsets, $Res> get exceptTop {
    return $SizeSetCopyWith<EdgeInsets, $Res>(_value.exceptTop, (value) {
      return _then(_value.copyWith(exceptTop: value));
    });
  }

  @override
  $SizeSetCopyWith<EdgeInsets, $Res> get exceptBottom {
    return $SizeSetCopyWith<EdgeInsets, $Res>(_value.exceptBottom, (value) {
      return _then(_value.copyWith(exceptBottom: value));
    });
  }
}

/// @nodoc
abstract class _$SpacingInsetsDataCopyWith<$Res>
    implements $SpacingInsetsDataCopyWith<$Res> {
  factory _$SpacingInsetsDataCopyWith(
          _SpacingInsetsData value, $Res Function(_SpacingInsetsData) then) =
      __$SpacingInsetsDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {SizeSet<EdgeInsets> all,
      SizeSet<EdgeInsets> horizontal,
      SizeSet<EdgeInsets> vertical,
      SizeSet<EdgeInsets> onlyRight,
      SizeSet<EdgeInsets> onlyTop,
      SizeSet<EdgeInsets> onlyBottom,
      SizeSet<EdgeInsets> onlyLeft,
      SizeSet<EdgeInsets> exceptLeft,
      SizeSet<EdgeInsets> exceptRight,
      SizeSet<EdgeInsets> exceptTop,
      SizeSet<EdgeInsets> exceptBottom});

  @override
  $SizeSetCopyWith<EdgeInsets, $Res> get all;
  @override
  $SizeSetCopyWith<EdgeInsets, $Res> get horizontal;
  @override
  $SizeSetCopyWith<EdgeInsets, $Res> get vertical;
  @override
  $SizeSetCopyWith<EdgeInsets, $Res> get onlyRight;
  @override
  $SizeSetCopyWith<EdgeInsets, $Res> get onlyTop;
  @override
  $SizeSetCopyWith<EdgeInsets, $Res> get onlyBottom;
  @override
  $SizeSetCopyWith<EdgeInsets, $Res> get onlyLeft;
  @override
  $SizeSetCopyWith<EdgeInsets, $Res> get exceptLeft;
  @override
  $SizeSetCopyWith<EdgeInsets, $Res> get exceptRight;
  @override
  $SizeSetCopyWith<EdgeInsets, $Res> get exceptTop;
  @override
  $SizeSetCopyWith<EdgeInsets, $Res> get exceptBottom;
}

/// @nodoc
class __$SpacingInsetsDataCopyWithImpl<$Res>
    extends _$SpacingInsetsDataCopyWithImpl<$Res>
    implements _$SpacingInsetsDataCopyWith<$Res> {
  __$SpacingInsetsDataCopyWithImpl(
      _SpacingInsetsData _value, $Res Function(_SpacingInsetsData) _then)
      : super(_value, (v) => _then(v as _SpacingInsetsData));

  @override
  _SpacingInsetsData get _value => super._value as _SpacingInsetsData;

  @override
  $Res call({
    Object? all = freezed,
    Object? horizontal = freezed,
    Object? vertical = freezed,
    Object? onlyRight = freezed,
    Object? onlyTop = freezed,
    Object? onlyBottom = freezed,
    Object? onlyLeft = freezed,
    Object? exceptLeft = freezed,
    Object? exceptRight = freezed,
    Object? exceptTop = freezed,
    Object? exceptBottom = freezed,
  }) {
    return _then(_SpacingInsetsData(
      all: all == freezed ? _value.all : all as SizeSet<EdgeInsets>,
      horizontal: horizontal == freezed
          ? _value.horizontal
          : horizontal as SizeSet<EdgeInsets>,
      vertical: vertical == freezed
          ? _value.vertical
          : vertical as SizeSet<EdgeInsets>,
      onlyRight: onlyRight == freezed
          ? _value.onlyRight
          : onlyRight as SizeSet<EdgeInsets>,
      onlyTop:
          onlyTop == freezed ? _value.onlyTop : onlyTop as SizeSet<EdgeInsets>,
      onlyBottom: onlyBottom == freezed
          ? _value.onlyBottom
          : onlyBottom as SizeSet<EdgeInsets>,
      onlyLeft: onlyLeft == freezed
          ? _value.onlyLeft
          : onlyLeft as SizeSet<EdgeInsets>,
      exceptLeft: exceptLeft == freezed
          ? _value.exceptLeft
          : exceptLeft as SizeSet<EdgeInsets>,
      exceptRight: exceptRight == freezed
          ? _value.exceptRight
          : exceptRight as SizeSet<EdgeInsets>,
      exceptTop: exceptTop == freezed
          ? _value.exceptTop
          : exceptTop as SizeSet<EdgeInsets>,
      exceptBottom: exceptBottom == freezed
          ? _value.exceptBottom
          : exceptBottom as SizeSet<EdgeInsets>,
    ));
  }
}

/// @nodoc
class _$_SpacingInsetsData implements _SpacingInsetsData {
  const _$_SpacingInsetsData(
      {required this.all,
      required this.horizontal,
      required this.vertical,
      required this.onlyRight,
      required this.onlyTop,
      required this.onlyBottom,
      required this.onlyLeft,
      required this.exceptLeft,
      required this.exceptRight,
      required this.exceptTop,
      required this.exceptBottom});

  @override
  final SizeSet<EdgeInsets> all;
  @override
  final SizeSet<EdgeInsets> horizontal;
  @override
  final SizeSet<EdgeInsets> vertical;
  @override
  final SizeSet<EdgeInsets> onlyRight;
  @override
  final SizeSet<EdgeInsets> onlyTop;
  @override
  final SizeSet<EdgeInsets> onlyBottom;
  @override
  final SizeSet<EdgeInsets> onlyLeft;
  @override
  final SizeSet<EdgeInsets> exceptLeft;
  @override
  final SizeSet<EdgeInsets> exceptRight;
  @override
  final SizeSet<EdgeInsets> exceptTop;
  @override
  final SizeSet<EdgeInsets> exceptBottom;

  @override
  String toString() {
    return 'SpacingInsetsData(all: $all, horizontal: $horizontal, vertical: $vertical, onlyRight: $onlyRight, onlyTop: $onlyTop, onlyBottom: $onlyBottom, onlyLeft: $onlyLeft, exceptLeft: $exceptLeft, exceptRight: $exceptRight, exceptTop: $exceptTop, exceptBottom: $exceptBottom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SpacingInsetsData &&
            (identical(other.all, all) ||
                const DeepCollectionEquality().equals(other.all, all)) &&
            (identical(other.horizontal, horizontal) ||
                const DeepCollectionEquality()
                    .equals(other.horizontal, horizontal)) &&
            (identical(other.vertical, vertical) ||
                const DeepCollectionEquality()
                    .equals(other.vertical, vertical)) &&
            (identical(other.onlyRight, onlyRight) ||
                const DeepCollectionEquality()
                    .equals(other.onlyRight, onlyRight)) &&
            (identical(other.onlyTop, onlyTop) ||
                const DeepCollectionEquality()
                    .equals(other.onlyTop, onlyTop)) &&
            (identical(other.onlyBottom, onlyBottom) ||
                const DeepCollectionEquality()
                    .equals(other.onlyBottom, onlyBottom)) &&
            (identical(other.onlyLeft, onlyLeft) ||
                const DeepCollectionEquality()
                    .equals(other.onlyLeft, onlyLeft)) &&
            (identical(other.exceptLeft, exceptLeft) ||
                const DeepCollectionEquality()
                    .equals(other.exceptLeft, exceptLeft)) &&
            (identical(other.exceptRight, exceptRight) ||
                const DeepCollectionEquality()
                    .equals(other.exceptRight, exceptRight)) &&
            (identical(other.exceptTop, exceptTop) ||
                const DeepCollectionEquality()
                    .equals(other.exceptTop, exceptTop)) &&
            (identical(other.exceptBottom, exceptBottom) ||
                const DeepCollectionEquality()
                    .equals(other.exceptBottom, exceptBottom)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(all) ^
      const DeepCollectionEquality().hash(horizontal) ^
      const DeepCollectionEquality().hash(vertical) ^
      const DeepCollectionEquality().hash(onlyRight) ^
      const DeepCollectionEquality().hash(onlyTop) ^
      const DeepCollectionEquality().hash(onlyBottom) ^
      const DeepCollectionEquality().hash(onlyLeft) ^
      const DeepCollectionEquality().hash(exceptLeft) ^
      const DeepCollectionEquality().hash(exceptRight) ^
      const DeepCollectionEquality().hash(exceptTop) ^
      const DeepCollectionEquality().hash(exceptBottom);

  @JsonKey(ignore: true)
  @override
  _$SpacingInsetsDataCopyWith<_SpacingInsetsData> get copyWith =>
      __$SpacingInsetsDataCopyWithImpl<_SpacingInsetsData>(this, _$identity);
}

abstract class _SpacingInsetsData implements SpacingInsetsData {
  const factory _SpacingInsetsData(
      {required SizeSet<EdgeInsets> all,
      required SizeSet<EdgeInsets> horizontal,
      required SizeSet<EdgeInsets> vertical,
      required SizeSet<EdgeInsets> onlyRight,
      required SizeSet<EdgeInsets> onlyTop,
      required SizeSet<EdgeInsets> onlyBottom,
      required SizeSet<EdgeInsets> onlyLeft,
      required SizeSet<EdgeInsets> exceptLeft,
      required SizeSet<EdgeInsets> exceptRight,
      required SizeSet<EdgeInsets> exceptTop,
      required SizeSet<EdgeInsets> exceptBottom}) = _$_SpacingInsetsData;

  @override
  SizeSet<EdgeInsets> get all => throw _privateConstructorUsedError;
  @override
  SizeSet<EdgeInsets> get horizontal => throw _privateConstructorUsedError;
  @override
  SizeSet<EdgeInsets> get vertical => throw _privateConstructorUsedError;
  @override
  SizeSet<EdgeInsets> get onlyRight => throw _privateConstructorUsedError;
  @override
  SizeSet<EdgeInsets> get onlyTop => throw _privateConstructorUsedError;
  @override
  SizeSet<EdgeInsets> get onlyBottom => throw _privateConstructorUsedError;
  @override
  SizeSet<EdgeInsets> get onlyLeft => throw _privateConstructorUsedError;
  @override
  SizeSet<EdgeInsets> get exceptLeft => throw _privateConstructorUsedError;
  @override
  SizeSet<EdgeInsets> get exceptRight => throw _privateConstructorUsedError;
  @override
  SizeSet<EdgeInsets> get exceptTop => throw _privateConstructorUsedError;
  @override
  SizeSet<EdgeInsets> get exceptBottom => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SpacingInsetsDataCopyWith<_SpacingInsetsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SizeSetTearOff {
  const _$SizeSetTearOff();

  _SizeSet<T> call<T>(
      {required T extraSmall,
      required T small,
      required T semiSmall,
      required T normal,
      required T semiBig,
      required T big,
      required T extraBig}) {
    return _SizeSet<T>(
      extraSmall: extraSmall,
      small: small,
      semiSmall: semiSmall,
      normal: normal,
      semiBig: semiBig,
      big: big,
      extraBig: extraBig,
    );
  }
}

/// @nodoc
const $SizeSet = _$SizeSetTearOff();

/// @nodoc
mixin _$SizeSet<T> {
  T get extraSmall => throw _privateConstructorUsedError;
  T get small => throw _privateConstructorUsedError;
  T get semiSmall => throw _privateConstructorUsedError;
  T get normal => throw _privateConstructorUsedError;
  T get semiBig => throw _privateConstructorUsedError;
  T get big => throw _privateConstructorUsedError;
  T get extraBig => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SizeSetCopyWith<T, SizeSet<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeSetCopyWith<T, $Res> {
  factory $SizeSetCopyWith(SizeSet<T> value, $Res Function(SizeSet<T>) then) =
      _$SizeSetCopyWithImpl<T, $Res>;
  $Res call(
      {T extraSmall,
      T small,
      T semiSmall,
      T normal,
      T semiBig,
      T big,
      T extraBig});
}

/// @nodoc
class _$SizeSetCopyWithImpl<T, $Res> implements $SizeSetCopyWith<T, $Res> {
  _$SizeSetCopyWithImpl(this._value, this._then);

  final SizeSet<T> _value;
  // ignore: unused_field
  final $Res Function(SizeSet<T>) _then;

  @override
  $Res call({
    Object? extraSmall = freezed,
    Object? small = freezed,
    Object? semiSmall = freezed,
    Object? normal = freezed,
    Object? semiBig = freezed,
    Object? big = freezed,
    Object? extraBig = freezed,
  }) {
    return _then(_value.copyWith(
      extraSmall: extraSmall == freezed ? _value.extraSmall : extraSmall as T,
      small: small == freezed ? _value.small : small as T,
      semiSmall: semiSmall == freezed ? _value.semiSmall : semiSmall as T,
      normal: normal == freezed ? _value.normal : normal as T,
      semiBig: semiBig == freezed ? _value.semiBig : semiBig as T,
      big: big == freezed ? _value.big : big as T,
      extraBig: extraBig == freezed ? _value.extraBig : extraBig as T,
    ));
  }
}

/// @nodoc
abstract class _$SizeSetCopyWith<T, $Res> implements $SizeSetCopyWith<T, $Res> {
  factory _$SizeSetCopyWith(
          _SizeSet<T> value, $Res Function(_SizeSet<T>) then) =
      __$SizeSetCopyWithImpl<T, $Res>;
  @override
  $Res call(
      {T extraSmall,
      T small,
      T semiSmall,
      T normal,
      T semiBig,
      T big,
      T extraBig});
}

/// @nodoc
class __$SizeSetCopyWithImpl<T, $Res> extends _$SizeSetCopyWithImpl<T, $Res>
    implements _$SizeSetCopyWith<T, $Res> {
  __$SizeSetCopyWithImpl(_SizeSet<T> _value, $Res Function(_SizeSet<T>) _then)
      : super(_value, (v) => _then(v as _SizeSet<T>));

  @override
  _SizeSet<T> get _value => super._value as _SizeSet<T>;

  @override
  $Res call({
    Object? extraSmall = freezed,
    Object? small = freezed,
    Object? semiSmall = freezed,
    Object? normal = freezed,
    Object? semiBig = freezed,
    Object? big = freezed,
    Object? extraBig = freezed,
  }) {
    return _then(_SizeSet<T>(
      extraSmall: extraSmall == freezed ? _value.extraSmall : extraSmall as T,
      small: small == freezed ? _value.small : small as T,
      semiSmall: semiSmall == freezed ? _value.semiSmall : semiSmall as T,
      normal: normal == freezed ? _value.normal : normal as T,
      semiBig: semiBig == freezed ? _value.semiBig : semiBig as T,
      big: big == freezed ? _value.big : big as T,
      extraBig: extraBig == freezed ? _value.extraBig : extraBig as T,
    ));
  }
}

/// @nodoc
class _$_SizeSet<T> implements _SizeSet<T> {
  const _$_SizeSet(
      {required this.extraSmall,
      required this.small,
      required this.semiSmall,
      required this.normal,
      required this.semiBig,
      required this.big,
      required this.extraBig});

  @override
  final T extraSmall;
  @override
  final T small;
  @override
  final T semiSmall;
  @override
  final T normal;
  @override
  final T semiBig;
  @override
  final T big;
  @override
  final T extraBig;

  @override
  String toString() {
    return 'SizeSet<$T>(extraSmall: $extraSmall, small: $small, semiSmall: $semiSmall, normal: $normal, semiBig: $semiBig, big: $big, extraBig: $extraBig)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SizeSet<T> &&
            (identical(other.extraSmall, extraSmall) ||
                const DeepCollectionEquality()
                    .equals(other.extraSmall, extraSmall)) &&
            (identical(other.small, small) ||
                const DeepCollectionEquality().equals(other.small, small)) &&
            (identical(other.semiSmall, semiSmall) ||
                const DeepCollectionEquality()
                    .equals(other.semiSmall, semiSmall)) &&
            (identical(other.normal, normal) ||
                const DeepCollectionEquality().equals(other.normal, normal)) &&
            (identical(other.semiBig, semiBig) ||
                const DeepCollectionEquality()
                    .equals(other.semiBig, semiBig)) &&
            (identical(other.big, big) ||
                const DeepCollectionEquality().equals(other.big, big)) &&
            (identical(other.extraBig, extraBig) ||
                const DeepCollectionEquality()
                    .equals(other.extraBig, extraBig)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(extraSmall) ^
      const DeepCollectionEquality().hash(small) ^
      const DeepCollectionEquality().hash(semiSmall) ^
      const DeepCollectionEquality().hash(normal) ^
      const DeepCollectionEquality().hash(semiBig) ^
      const DeepCollectionEquality().hash(big) ^
      const DeepCollectionEquality().hash(extraBig);

  @JsonKey(ignore: true)
  @override
  _$SizeSetCopyWith<T, _SizeSet<T>> get copyWith =>
      __$SizeSetCopyWithImpl<T, _SizeSet<T>>(this, _$identity);
}

abstract class _SizeSet<T> implements SizeSet<T> {
  const factory _SizeSet(
      {required T extraSmall,
      required T small,
      required T semiSmall,
      required T normal,
      required T semiBig,
      required T big,
      required T extraBig}) = _$_SizeSet<T>;

  @override
  T get extraSmall => throw _privateConstructorUsedError;
  @override
  T get small => throw _privateConstructorUsedError;
  @override
  T get semiSmall => throw _privateConstructorUsedError;
  @override
  T get normal => throw _privateConstructorUsedError;
  @override
  T get semiBig => throw _privateConstructorUsedError;
  @override
  T get big => throw _privateConstructorUsedError;
  @override
  T get extraBig => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SizeSetCopyWith<T, _SizeSet<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
