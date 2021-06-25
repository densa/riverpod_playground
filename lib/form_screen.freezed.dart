// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'form_screen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FormInputTearOff {
  const _$FormInputTearOff();

// ignore: unused_element
  _FormInput<T> call<T>(T value, [String error]) {
    return _FormInput<T>(
      value,
      error,
    );
  }

// ignore: unused_element
  Initial<T> initial<T>() {
    return Initial<T>();
  }
}

/// @nodoc
// ignore: unused_element
const $FormInput = _$FormInputTearOff();

/// @nodoc
mixin _$FormInput<T> {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(T value, String error), {
    @required Result initial(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(T value, String error), {
    Result initial(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_FormInput<T> value), {
    @required Result initial(Initial<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_FormInput<T> value), {
    Result initial(Initial<T> value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $FormInputCopyWith<T, $Res> {
  factory $FormInputCopyWith(
          FormInput<T> value, $Res Function(FormInput<T>) then) =
      _$FormInputCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$FormInputCopyWithImpl<T, $Res> implements $FormInputCopyWith<T, $Res> {
  _$FormInputCopyWithImpl(this._value, this._then);

  final FormInput<T> _value;
  // ignore: unused_field
  final $Res Function(FormInput<T>) _then;
}

/// @nodoc
abstract class _$FormInputCopyWith<T, $Res> {
  factory _$FormInputCopyWith(
          _FormInput<T> value, $Res Function(_FormInput<T>) then) =
      __$FormInputCopyWithImpl<T, $Res>;
  $Res call({T value, String error});
}

/// @nodoc
class __$FormInputCopyWithImpl<T, $Res> extends _$FormInputCopyWithImpl<T, $Res>
    implements _$FormInputCopyWith<T, $Res> {
  __$FormInputCopyWithImpl(
      _FormInput<T> _value, $Res Function(_FormInput<T>) _then)
      : super(_value, (v) => _then(v as _FormInput<T>));

  @override
  _FormInput<T> get _value => super._value as _FormInput<T>;

  @override
  $Res call({
    Object value = freezed,
    Object error = freezed,
  }) {
    return _then(_FormInput<T>(
      value == freezed ? _value.value : value as T,
      error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$_FormInput<T> implements _FormInput<T> {
  const _$_FormInput(this.value, [this.error]) : assert(value != null);

  @override
  final T value;
  @override
  final String error;

  @override
  String toString() {
    return 'FormInput<$T>(value: $value, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FormInput<T> &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(error);

  @override
  _$FormInputCopyWith<T, _FormInput<T>> get copyWith =>
      __$FormInputCopyWithImpl<T, _FormInput<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(T value, String error), {
    @required Result initial(),
  }) {
    assert($default != null);
    assert(initial != null);
    return $default(value, error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(T value, String error), {
    Result initial(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(value, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_FormInput<T> value), {
    @required Result initial(Initial<T> value),
  }) {
    assert($default != null);
    assert(initial != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_FormInput<T> value), {
    Result initial(Initial<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _FormInput<T> implements FormInput<T> {
  const factory _FormInput(T value, [String error]) = _$_FormInput<T>;

  T get value;
  String get error;
  _$FormInputCopyWith<T, _FormInput<T>> get copyWith;
}

/// @nodoc
abstract class $InitialCopyWith<T, $Res> {
  factory $InitialCopyWith(Initial<T> value, $Res Function(Initial<T>) then) =
      _$InitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<T, $Res> extends _$FormInputCopyWithImpl<T, $Res>
    implements $InitialCopyWith<T, $Res> {
  _$InitialCopyWithImpl(Initial<T> _value, $Res Function(Initial<T>) _then)
      : super(_value, (v) => _then(v as Initial<T>));

  @override
  Initial<T> get _value => super._value as Initial<T>;
}

/// @nodoc
class _$Initial<T> implements Initial<T> {
  const _$Initial();

  @override
  String toString() {
    return 'FormInput<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(T value, String error), {
    @required Result initial(),
  }) {
    assert($default != null);
    assert(initial != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(T value, String error), {
    Result initial(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_FormInput<T> value), {
    @required Result initial(Initial<T> value),
  }) {
    assert($default != null);
    assert(initial != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_FormInput<T> value), {
    Result initial(Initial<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial<T> implements FormInput<T> {
  const factory Initial() = _$Initial<T>;
}
