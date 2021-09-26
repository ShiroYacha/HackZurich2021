// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorResult _$ErrorResultFromJson(Map<String, dynamic> json) {
  return _ErrorResult.fromJson(json);
}

/// @nodoc
class _$ErrorResultTearOff {
  const _$ErrorResultTearOff();

  _ErrorResult call(
      {@JsonKey(name: 'message') required String message,
      @JsonKey(name: 'status') required String status}) {
    return _ErrorResult(
      message: message,
      status: status,
    );
  }

  ErrorResult fromJson(Map<String, Object> json) {
    return ErrorResult.fromJson(json);
  }
}

/// @nodoc
const $ErrorResult = _$ErrorResultTearOff();

/// @nodoc
mixin _$ErrorResult {
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorResultCopyWith<ErrorResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorResultCopyWith<$Res> {
  factory $ErrorResultCopyWith(
          ErrorResult value, $Res Function(ErrorResult) then) =
      _$ErrorResultCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'message') String message,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class _$ErrorResultCopyWithImpl<$Res> implements $ErrorResultCopyWith<$Res> {
  _$ErrorResultCopyWithImpl(this._value, this._then);

  final ErrorResult _value;
  // ignore: unused_field
  final $Res Function(ErrorResult) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ErrorResultCopyWith<$Res>
    implements $ErrorResultCopyWith<$Res> {
  factory _$ErrorResultCopyWith(
          _ErrorResult value, $Res Function(_ErrorResult) then) =
      __$ErrorResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'message') String message,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class __$ErrorResultCopyWithImpl<$Res> extends _$ErrorResultCopyWithImpl<$Res>
    implements _$ErrorResultCopyWith<$Res> {
  __$ErrorResultCopyWithImpl(
      _ErrorResult _value, $Res Function(_ErrorResult) _then)
      : super(_value, (v) => _then(v as _ErrorResult));

  @override
  _ErrorResult get _value => super._value as _ErrorResult;

  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_ErrorResult(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorResult implements _ErrorResult {
  _$_ErrorResult(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'status') required this.status});

  factory _$_ErrorResult.fromJson(Map<String, dynamic> json) =>
      _$_$_ErrorResultFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'status')
  final String status;

  @override
  String toString() {
    return 'ErrorResult(message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorResult &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$ErrorResultCopyWith<_ErrorResult> get copyWith =>
      __$ErrorResultCopyWithImpl<_ErrorResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ErrorResultToJson(this);
  }
}

abstract class _ErrorResult implements ErrorResult {
  factory _ErrorResult(
      {@JsonKey(name: 'message') required String message,
      @JsonKey(name: 'status') required String status}) = _$_ErrorResult;

  factory _ErrorResult.fromJson(Map<String, dynamic> json) =
      _$_ErrorResult.fromJson;

  @override
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorResultCopyWith<_ErrorResult> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required String id,
      required String name,
      required List<String> communityIds,
      String? avatarUrl}) {
    return _User(
      id: id,
      name: name,
      communityIds: communityIds,
      avatarUrl: avatarUrl,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get communityIds => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String id, String name, List<String> communityIds, String? avatarUrl});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? communityIds = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      communityIds: communityIds == freezed
          ? _value.communityIds
          : communityIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String name, List<String> communityIds, String? avatarUrl});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? communityIds = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      communityIds: communityIds == freezed
          ? _value.communityIds
          : communityIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  _$_User(
      {required this.id,
      required this.name,
      required this.communityIds,
      this.avatarUrl});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final List<String> communityIds;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'User(id: $id, name: $name, communityIds: $communityIds, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.communityIds, communityIds) ||
                const DeepCollectionEquality()
                    .equals(other.communityIds, communityIds)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(communityIds) ^
      const DeepCollectionEquality().hash(avatarUrl);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  factory _User(
      {required String id,
      required String name,
      required List<String> communityIds,
      String? avatarUrl}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<String> get communityIds => throw _privateConstructorUsedError;
  @override
  String? get avatarUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

UsersUnion _$UsersUnionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'default':
      return Users.fromJson(json);
    case 'error':
      return UsersError.fromJson(json);
    case 'loading':
      return UsersLoading.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$UsersUnionTearOff {
  const _$UsersUnionTearOff();

  Users call({@JsonKey(name: 'users') required List<User> users}) {
    return Users(
      users: users,
    );
  }

  UsersError error(ErrorResult error) {
    return UsersError(
      error,
    );
  }

  UsersLoading loading() {
    return UsersLoading();
  }

  UsersUnion fromJson(Map<String, Object> json) {
    return UsersUnion.fromJson(json);
  }
}

/// @nodoc
const $UsersUnion = _$UsersUnionTearOff();

/// @nodoc
mixin _$UsersUnion {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'users') List<User> users) $default, {
    required TResult Function(ErrorResult error) error,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'users') List<User> users)? $default, {
    TResult Function(ErrorResult error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Users value) $default, {
    required TResult Function(UsersError value) error,
    required TResult Function(UsersLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Users value)? $default, {
    TResult Function(UsersError value)? error,
    TResult Function(UsersLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersUnionCopyWith<$Res> {
  factory $UsersUnionCopyWith(
          UsersUnion value, $Res Function(UsersUnion) then) =
      _$UsersUnionCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersUnionCopyWithImpl<$Res> implements $UsersUnionCopyWith<$Res> {
  _$UsersUnionCopyWithImpl(this._value, this._then);

  final UsersUnion _value;
  // ignore: unused_field
  final $Res Function(UsersUnion) _then;
}

/// @nodoc
abstract class $UsersCopyWith<$Res> {
  factory $UsersCopyWith(Users value, $Res Function(Users) then) =
      _$UsersCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'users') List<User> users});
}

/// @nodoc
class _$UsersCopyWithImpl<$Res> extends _$UsersUnionCopyWithImpl<$Res>
    implements $UsersCopyWith<$Res> {
  _$UsersCopyWithImpl(Users _value, $Res Function(Users) _then)
      : super(_value, (v) => _then(v as Users));

  @override
  Users get _value => super._value as Users;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(Users(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Users extends Users {
  _$Users({@JsonKey(name: 'users') required this.users}) : super._();

  factory _$Users.fromJson(Map<String, dynamic> json) =>
      _$_$UsersFromJson(json);

  @override
  @JsonKey(name: 'users')
  final List<User> users;

  @override
  String toString() {
    return 'UsersUnion(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Users &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(users);

  @JsonKey(ignore: true)
  @override
  $UsersCopyWith<Users> get copyWith =>
      _$UsersCopyWithImpl<Users>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'users') List<User> users) $default, {
    required TResult Function(ErrorResult error) error,
    required TResult Function() loading,
  }) {
    return $default(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'users') List<User> users)? $default, {
    TResult Function(ErrorResult error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Users value) $default, {
    required TResult Function(UsersError value) error,
    required TResult Function(UsersLoading value) loading,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Users value)? $default, {
    TResult Function(UsersError value)? error,
    TResult Function(UsersLoading value)? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$UsersToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class Users extends UsersUnion {
  factory Users({@JsonKey(name: 'users') required List<User> users}) = _$Users;
  Users._() : super._();

  factory Users.fromJson(Map<String, dynamic> json) = _$Users.fromJson;

  @JsonKey(name: 'users')
  List<User> get users => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersCopyWith<Users> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersErrorCopyWith<$Res> {
  factory $UsersErrorCopyWith(
          UsersError value, $Res Function(UsersError) then) =
      _$UsersErrorCopyWithImpl<$Res>;
  $Res call({ErrorResult error});

  $ErrorResultCopyWith<$Res> get error;
}

/// @nodoc
class _$UsersErrorCopyWithImpl<$Res> extends _$UsersUnionCopyWithImpl<$Res>
    implements $UsersErrorCopyWith<$Res> {
  _$UsersErrorCopyWithImpl(UsersError _value, $Res Function(UsersError) _then)
      : super(_value, (v) => _then(v as UsersError));

  @override
  UsersError get _value => super._value as UsersError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(UsersError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResult,
    ));
  }

  @override
  $ErrorResultCopyWith<$Res> get error {
    return $ErrorResultCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersError extends UsersError {
  _$UsersError(this.error) : super._();

  factory _$UsersError.fromJson(Map<String, dynamic> json) =>
      _$_$UsersErrorFromJson(json);

  @override
  final ErrorResult error;

  @override
  String toString() {
    return 'UsersUnion.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsersError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $UsersErrorCopyWith<UsersError> get copyWith =>
      _$UsersErrorCopyWithImpl<UsersError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'users') List<User> users) $default, {
    required TResult Function(ErrorResult error) error,
    required TResult Function() loading,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'users') List<User> users)? $default, {
    TResult Function(ErrorResult error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Users value) $default, {
    required TResult Function(UsersError value) error,
    required TResult Function(UsersLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Users value)? $default, {
    TResult Function(UsersError value)? error,
    TResult Function(UsersLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$UsersErrorToJson(this)..['runtimeType'] = 'error';
  }
}

abstract class UsersError extends UsersUnion {
  factory UsersError(ErrorResult error) = _$UsersError;
  UsersError._() : super._();

  factory UsersError.fromJson(Map<String, dynamic> json) =
      _$UsersError.fromJson;

  ErrorResult get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersErrorCopyWith<UsersError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersLoadingCopyWith<$Res> {
  factory $UsersLoadingCopyWith(
          UsersLoading value, $Res Function(UsersLoading) then) =
      _$UsersLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersLoadingCopyWithImpl<$Res> extends _$UsersUnionCopyWithImpl<$Res>
    implements $UsersLoadingCopyWith<$Res> {
  _$UsersLoadingCopyWithImpl(
      UsersLoading _value, $Res Function(UsersLoading) _then)
      : super(_value, (v) => _then(v as UsersLoading));

  @override
  UsersLoading get _value => super._value as UsersLoading;
}

/// @nodoc
@JsonSerializable()
class _$UsersLoading extends UsersLoading {
  _$UsersLoading() : super._();

  factory _$UsersLoading.fromJson(Map<String, dynamic> json) =>
      _$_$UsersLoadingFromJson(json);

  @override
  String toString() {
    return 'UsersUnion.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UsersLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'users') List<User> users) $default, {
    required TResult Function(ErrorResult error) error,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'users') List<User> users)? $default, {
    TResult Function(ErrorResult error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Users value) $default, {
    required TResult Function(UsersError value) error,
    required TResult Function(UsersLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Users value)? $default, {
    TResult Function(UsersError value)? error,
    TResult Function(UsersLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$UsersLoadingToJson(this)..['runtimeType'] = 'loading';
  }
}

abstract class UsersLoading extends UsersUnion {
  factory UsersLoading() = _$UsersLoading;
  UsersLoading._() : super._();

  factory UsersLoading.fromJson(Map<String, dynamic> json) =
      _$UsersLoading.fromJson;
}

Community _$CommunityFromJson(Map<String, dynamic> json) {
  return _Community.fromJson(json);
}

/// @nodoc
class _$CommunityTearOff {
  const _$CommunityTearOff();

  _Community call(
      {required String id,
      required String name,
      required String label,
      required String invitationCode,
      required String magicWord,
      String? backgroundUrl}) {
    return _Community(
      id: id,
      name: name,
      label: label,
      invitationCode: invitationCode,
      magicWord: magicWord,
      backgroundUrl: backgroundUrl,
    );
  }

  Community fromJson(Map<String, Object> json) {
    return Community.fromJson(json);
  }
}

/// @nodoc
const $Community = _$CommunityTearOff();

/// @nodoc
mixin _$Community {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get invitationCode => throw _privateConstructorUsedError;
  String get magicWord => throw _privateConstructorUsedError;
  String? get backgroundUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommunityCopyWith<Community> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityCopyWith<$Res> {
  factory $CommunityCopyWith(Community value, $Res Function(Community) then) =
      _$CommunityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String label,
      String invitationCode,
      String magicWord,
      String? backgroundUrl});
}

/// @nodoc
class _$CommunityCopyWithImpl<$Res> implements $CommunityCopyWith<$Res> {
  _$CommunityCopyWithImpl(this._value, this._then);

  final Community _value;
  // ignore: unused_field
  final $Res Function(Community) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? label = freezed,
    Object? invitationCode = freezed,
    Object? magicWord = freezed,
    Object? backgroundUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      invitationCode: invitationCode == freezed
          ? _value.invitationCode
          : invitationCode // ignore: cast_nullable_to_non_nullable
              as String,
      magicWord: magicWord == freezed
          ? _value.magicWord
          : magicWord // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundUrl: backgroundUrl == freezed
          ? _value.backgroundUrl
          : backgroundUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CommunityCopyWith<$Res> implements $CommunityCopyWith<$Res> {
  factory _$CommunityCopyWith(
          _Community value, $Res Function(_Community) then) =
      __$CommunityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String label,
      String invitationCode,
      String magicWord,
      String? backgroundUrl});
}

/// @nodoc
class __$CommunityCopyWithImpl<$Res> extends _$CommunityCopyWithImpl<$Res>
    implements _$CommunityCopyWith<$Res> {
  __$CommunityCopyWithImpl(_Community _value, $Res Function(_Community) _then)
      : super(_value, (v) => _then(v as _Community));

  @override
  _Community get _value => super._value as _Community;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? label = freezed,
    Object? invitationCode = freezed,
    Object? magicWord = freezed,
    Object? backgroundUrl = freezed,
  }) {
    return _then(_Community(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      invitationCode: invitationCode == freezed
          ? _value.invitationCode
          : invitationCode // ignore: cast_nullable_to_non_nullable
              as String,
      magicWord: magicWord == freezed
          ? _value.magicWord
          : magicWord // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundUrl: backgroundUrl == freezed
          ? _value.backgroundUrl
          : backgroundUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Community implements _Community {
  _$_Community(
      {required this.id,
      required this.name,
      required this.label,
      required this.invitationCode,
      required this.magicWord,
      this.backgroundUrl});

  factory _$_Community.fromJson(Map<String, dynamic> json) =>
      _$_$_CommunityFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String label;
  @override
  final String invitationCode;
  @override
  final String magicWord;
  @override
  final String? backgroundUrl;

  @override
  String toString() {
    return 'Community(id: $id, name: $name, label: $label, invitationCode: $invitationCode, magicWord: $magicWord, backgroundUrl: $backgroundUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Community &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.invitationCode, invitationCode) ||
                const DeepCollectionEquality()
                    .equals(other.invitationCode, invitationCode)) &&
            (identical(other.magicWord, magicWord) ||
                const DeepCollectionEquality()
                    .equals(other.magicWord, magicWord)) &&
            (identical(other.backgroundUrl, backgroundUrl) ||
                const DeepCollectionEquality()
                    .equals(other.backgroundUrl, backgroundUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(invitationCode) ^
      const DeepCollectionEquality().hash(magicWord) ^
      const DeepCollectionEquality().hash(backgroundUrl);

  @JsonKey(ignore: true)
  @override
  _$CommunityCopyWith<_Community> get copyWith =>
      __$CommunityCopyWithImpl<_Community>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommunityToJson(this);
  }
}

abstract class _Community implements Community {
  factory _Community(
      {required String id,
      required String name,
      required String label,
      required String invitationCode,
      required String magicWord,
      String? backgroundUrl}) = _$_Community;

  factory _Community.fromJson(Map<String, dynamic> json) =
      _$_Community.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get label => throw _privateConstructorUsedError;
  @override
  String get invitationCode => throw _privateConstructorUsedError;
  @override
  String get magicWord => throw _privateConstructorUsedError;
  @override
  String? get backgroundUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommunityCopyWith<_Community> get copyWith =>
      throw _privateConstructorUsedError;
}

CommunitiesUnion _$CommunitiesUnionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'default':
      return Communities.fromJson(json);
    case 'error':
      return CommunitiesError.fromJson(json);
    case 'loading':
      return CommunitiesLoading.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$CommunitiesUnionTearOff {
  const _$CommunitiesUnionTearOff();

  Communities call(
      {@JsonKey(name: 'communitiess') required List<Community> communities}) {
    return Communities(
      communities: communities,
    );
  }

  CommunitiesError error(ErrorResult error) {
    return CommunitiesError(
      error,
    );
  }

  CommunitiesLoading loading() {
    return CommunitiesLoading();
  }

  CommunitiesUnion fromJson(Map<String, Object> json) {
    return CommunitiesUnion.fromJson(json);
  }
}

/// @nodoc
const $CommunitiesUnion = _$CommunitiesUnionTearOff();

/// @nodoc
mixin _$CommunitiesUnion {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'communitiess') List<Community> communities)
        $default, {
    required TResult Function(ErrorResult error) error,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'communitiess') List<Community> communities)?
        $default, {
    TResult Function(ErrorResult error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Communities value) $default, {
    required TResult Function(CommunitiesError value) error,
    required TResult Function(CommunitiesLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Communities value)? $default, {
    TResult Function(CommunitiesError value)? error,
    TResult Function(CommunitiesLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunitiesUnionCopyWith<$Res> {
  factory $CommunitiesUnionCopyWith(
          CommunitiesUnion value, $Res Function(CommunitiesUnion) then) =
      _$CommunitiesUnionCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommunitiesUnionCopyWithImpl<$Res>
    implements $CommunitiesUnionCopyWith<$Res> {
  _$CommunitiesUnionCopyWithImpl(this._value, this._then);

  final CommunitiesUnion _value;
  // ignore: unused_field
  final $Res Function(CommunitiesUnion) _then;
}

/// @nodoc
abstract class $CommunitiesCopyWith<$Res> {
  factory $CommunitiesCopyWith(
          Communities value, $Res Function(Communities) then) =
      _$CommunitiesCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'communitiess') List<Community> communities});
}

/// @nodoc
class _$CommunitiesCopyWithImpl<$Res>
    extends _$CommunitiesUnionCopyWithImpl<$Res>
    implements $CommunitiesCopyWith<$Res> {
  _$CommunitiesCopyWithImpl(
      Communities _value, $Res Function(Communities) _then)
      : super(_value, (v) => _then(v as Communities));

  @override
  Communities get _value => super._value as Communities;

  @override
  $Res call({
    Object? communities = freezed,
  }) {
    return _then(Communities(
      communities: communities == freezed
          ? _value.communities
          : communities // ignore: cast_nullable_to_non_nullable
              as List<Community>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Communities extends Communities {
  _$Communities({@JsonKey(name: 'communitiess') required this.communities})
      : super._();

  factory _$Communities.fromJson(Map<String, dynamic> json) =>
      _$_$CommunitiesFromJson(json);

  @override
  @JsonKey(name: 'communitiess')
  final List<Community> communities;

  @override
  String toString() {
    return 'CommunitiesUnion(communities: $communities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Communities &&
            (identical(other.communities, communities) ||
                const DeepCollectionEquality()
                    .equals(other.communities, communities)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(communities);

  @JsonKey(ignore: true)
  @override
  $CommunitiesCopyWith<Communities> get copyWith =>
      _$CommunitiesCopyWithImpl<Communities>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'communitiess') List<Community> communities)
        $default, {
    required TResult Function(ErrorResult error) error,
    required TResult Function() loading,
  }) {
    return $default(communities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'communitiess') List<Community> communities)?
        $default, {
    TResult Function(ErrorResult error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(communities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Communities value) $default, {
    required TResult Function(CommunitiesError value) error,
    required TResult Function(CommunitiesLoading value) loading,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Communities value)? $default, {
    TResult Function(CommunitiesError value)? error,
    TResult Function(CommunitiesLoading value)? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$CommunitiesToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class Communities extends CommunitiesUnion {
  factory Communities(
      {@JsonKey(name: 'communitiess')
          required List<Community> communities}) = _$Communities;
  Communities._() : super._();

  factory Communities.fromJson(Map<String, dynamic> json) =
      _$Communities.fromJson;

  @JsonKey(name: 'communitiess')
  List<Community> get communities => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommunitiesCopyWith<Communities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunitiesErrorCopyWith<$Res> {
  factory $CommunitiesErrorCopyWith(
          CommunitiesError value, $Res Function(CommunitiesError) then) =
      _$CommunitiesErrorCopyWithImpl<$Res>;
  $Res call({ErrorResult error});

  $ErrorResultCopyWith<$Res> get error;
}

/// @nodoc
class _$CommunitiesErrorCopyWithImpl<$Res>
    extends _$CommunitiesUnionCopyWithImpl<$Res>
    implements $CommunitiesErrorCopyWith<$Res> {
  _$CommunitiesErrorCopyWithImpl(
      CommunitiesError _value, $Res Function(CommunitiesError) _then)
      : super(_value, (v) => _then(v as CommunitiesError));

  @override
  CommunitiesError get _value => super._value as CommunitiesError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommunitiesError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResult,
    ));
  }

  @override
  $ErrorResultCopyWith<$Res> get error {
    return $ErrorResultCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunitiesError extends CommunitiesError {
  _$CommunitiesError(this.error) : super._();

  factory _$CommunitiesError.fromJson(Map<String, dynamic> json) =>
      _$_$CommunitiesErrorFromJson(json);

  @override
  final ErrorResult error;

  @override
  String toString() {
    return 'CommunitiesUnion.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommunitiesError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommunitiesErrorCopyWith<CommunitiesError> get copyWith =>
      _$CommunitiesErrorCopyWithImpl<CommunitiesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'communitiess') List<Community> communities)
        $default, {
    required TResult Function(ErrorResult error) error,
    required TResult Function() loading,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'communitiess') List<Community> communities)?
        $default, {
    TResult Function(ErrorResult error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Communities value) $default, {
    required TResult Function(CommunitiesError value) error,
    required TResult Function(CommunitiesLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Communities value)? $default, {
    TResult Function(CommunitiesError value)? error,
    TResult Function(CommunitiesLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$CommunitiesErrorToJson(this)..['runtimeType'] = 'error';
  }
}

abstract class CommunitiesError extends CommunitiesUnion {
  factory CommunitiesError(ErrorResult error) = _$CommunitiesError;
  CommunitiesError._() : super._();

  factory CommunitiesError.fromJson(Map<String, dynamic> json) =
      _$CommunitiesError.fromJson;

  ErrorResult get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommunitiesErrorCopyWith<CommunitiesError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunitiesLoadingCopyWith<$Res> {
  factory $CommunitiesLoadingCopyWith(
          CommunitiesLoading value, $Res Function(CommunitiesLoading) then) =
      _$CommunitiesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommunitiesLoadingCopyWithImpl<$Res>
    extends _$CommunitiesUnionCopyWithImpl<$Res>
    implements $CommunitiesLoadingCopyWith<$Res> {
  _$CommunitiesLoadingCopyWithImpl(
      CommunitiesLoading _value, $Res Function(CommunitiesLoading) _then)
      : super(_value, (v) => _then(v as CommunitiesLoading));

  @override
  CommunitiesLoading get _value => super._value as CommunitiesLoading;
}

/// @nodoc
@JsonSerializable()
class _$CommunitiesLoading extends CommunitiesLoading {
  _$CommunitiesLoading() : super._();

  factory _$CommunitiesLoading.fromJson(Map<String, dynamic> json) =>
      _$_$CommunitiesLoadingFromJson(json);

  @override
  String toString() {
    return 'CommunitiesUnion.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CommunitiesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'communitiess') List<Community> communities)
        $default, {
    required TResult Function(ErrorResult error) error,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'communitiess') List<Community> communities)?
        $default, {
    TResult Function(ErrorResult error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Communities value) $default, {
    required TResult Function(CommunitiesError value) error,
    required TResult Function(CommunitiesLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Communities value)? $default, {
    TResult Function(CommunitiesError value)? error,
    TResult Function(CommunitiesLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$CommunitiesLoadingToJson(this)..['runtimeType'] = 'loading';
  }
}

abstract class CommunitiesLoading extends CommunitiesUnion {
  factory CommunitiesLoading() = _$CommunitiesLoading;
  CommunitiesLoading._() : super._();

  factory CommunitiesLoading.fromJson(Map<String, dynamic> json) =
      _$CommunitiesLoading.fromJson;
}

Event _$EventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
class _$EventTearOff {
  const _$EventTearOff();

  _Event call(
      {required String id,
      required String name,
      required EventStatus status,
      required String communityId,
      required EventCategory category,
      required String description,
      required String organizerId,
      required List<String> yesParticipantIds,
      required List<String> maybeParticipantIds,
      required List<String> noParticipantIds,
      String? backgroundUrl}) {
    return _Event(
      id: id,
      name: name,
      status: status,
      communityId: communityId,
      category: category,
      description: description,
      organizerId: organizerId,
      yesParticipantIds: yesParticipantIds,
      maybeParticipantIds: maybeParticipantIds,
      noParticipantIds: noParticipantIds,
      backgroundUrl: backgroundUrl,
    );
  }

  Event fromJson(Map<String, Object> json) {
    return Event.fromJson(json);
  }
}

/// @nodoc
const $Event = _$EventTearOff();

/// @nodoc
mixin _$Event {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  EventStatus get status => throw _privateConstructorUsedError;
  String get communityId => throw _privateConstructorUsedError;
  EventCategory get category => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get organizerId => throw _privateConstructorUsedError;
  List<String> get yesParticipantIds => throw _privateConstructorUsedError;
  List<String> get maybeParticipantIds => throw _privateConstructorUsedError;
  List<String> get noParticipantIds => throw _privateConstructorUsedError;
  String? get backgroundUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      EventStatus status,
      String communityId,
      EventCategory category,
      String description,
      String organizerId,
      List<String> yesParticipantIds,
      List<String> maybeParticipantIds,
      List<String> noParticipantIds,
      String? backgroundUrl});
}

/// @nodoc
class _$EventCopyWithImpl<$Res> implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  final Event _value;
  // ignore: unused_field
  final $Res Function(Event) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? communityId = freezed,
    Object? category = freezed,
    Object? description = freezed,
    Object? organizerId = freezed,
    Object? yesParticipantIds = freezed,
    Object? maybeParticipantIds = freezed,
    Object? noParticipantIds = freezed,
    Object? backgroundUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EventStatus,
      communityId: communityId == freezed
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as EventCategory,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      organizerId: organizerId == freezed
          ? _value.organizerId
          : organizerId // ignore: cast_nullable_to_non_nullable
              as String,
      yesParticipantIds: yesParticipantIds == freezed
          ? _value.yesParticipantIds
          : yesParticipantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maybeParticipantIds: maybeParticipantIds == freezed
          ? _value.maybeParticipantIds
          : maybeParticipantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      noParticipantIds: noParticipantIds == freezed
          ? _value.noParticipantIds
          : noParticipantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      backgroundUrl: backgroundUrl == freezed
          ? _value.backgroundUrl
          : backgroundUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EventCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$EventCopyWith(_Event value, $Res Function(_Event) then) =
      __$EventCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      EventStatus status,
      String communityId,
      EventCategory category,
      String description,
      String organizerId,
      List<String> yesParticipantIds,
      List<String> maybeParticipantIds,
      List<String> noParticipantIds,
      String? backgroundUrl});
}

/// @nodoc
class __$EventCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res>
    implements _$EventCopyWith<$Res> {
  __$EventCopyWithImpl(_Event _value, $Res Function(_Event) _then)
      : super(_value, (v) => _then(v as _Event));

  @override
  _Event get _value => super._value as _Event;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? communityId = freezed,
    Object? category = freezed,
    Object? description = freezed,
    Object? organizerId = freezed,
    Object? yesParticipantIds = freezed,
    Object? maybeParticipantIds = freezed,
    Object? noParticipantIds = freezed,
    Object? backgroundUrl = freezed,
  }) {
    return _then(_Event(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EventStatus,
      communityId: communityId == freezed
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as EventCategory,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      organizerId: organizerId == freezed
          ? _value.organizerId
          : organizerId // ignore: cast_nullable_to_non_nullable
              as String,
      yesParticipantIds: yesParticipantIds == freezed
          ? _value.yesParticipantIds
          : yesParticipantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maybeParticipantIds: maybeParticipantIds == freezed
          ? _value.maybeParticipantIds
          : maybeParticipantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      noParticipantIds: noParticipantIds == freezed
          ? _value.noParticipantIds
          : noParticipantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      backgroundUrl: backgroundUrl == freezed
          ? _value.backgroundUrl
          : backgroundUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Event extends _Event {
  _$_Event(
      {required this.id,
      required this.name,
      required this.status,
      required this.communityId,
      required this.category,
      required this.description,
      required this.organizerId,
      required this.yesParticipantIds,
      required this.maybeParticipantIds,
      required this.noParticipantIds,
      this.backgroundUrl})
      : super._();

  factory _$_Event.fromJson(Map<String, dynamic> json) =>
      _$_$_EventFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final EventStatus status;
  @override
  final String communityId;
  @override
  final EventCategory category;
  @override
  final String description;
  @override
  final String organizerId;
  @override
  final List<String> yesParticipantIds;
  @override
  final List<String> maybeParticipantIds;
  @override
  final List<String> noParticipantIds;
  @override
  final String? backgroundUrl;

  @override
  String toString() {
    return 'Event(id: $id, name: $name, status: $status, communityId: $communityId, category: $category, description: $description, organizerId: $organizerId, yesParticipantIds: $yesParticipantIds, maybeParticipantIds: $maybeParticipantIds, noParticipantIds: $noParticipantIds, backgroundUrl: $backgroundUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Event &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.communityId, communityId) ||
                const DeepCollectionEquality()
                    .equals(other.communityId, communityId)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.organizerId, organizerId) ||
                const DeepCollectionEquality()
                    .equals(other.organizerId, organizerId)) &&
            (identical(other.yesParticipantIds, yesParticipantIds) ||
                const DeepCollectionEquality()
                    .equals(other.yesParticipantIds, yesParticipantIds)) &&
            (identical(other.maybeParticipantIds, maybeParticipantIds) ||
                const DeepCollectionEquality()
                    .equals(other.maybeParticipantIds, maybeParticipantIds)) &&
            (identical(other.noParticipantIds, noParticipantIds) ||
                const DeepCollectionEquality()
                    .equals(other.noParticipantIds, noParticipantIds)) &&
            (identical(other.backgroundUrl, backgroundUrl) ||
                const DeepCollectionEquality()
                    .equals(other.backgroundUrl, backgroundUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(communityId) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(organizerId) ^
      const DeepCollectionEquality().hash(yesParticipantIds) ^
      const DeepCollectionEquality().hash(maybeParticipantIds) ^
      const DeepCollectionEquality().hash(noParticipantIds) ^
      const DeepCollectionEquality().hash(backgroundUrl);

  @JsonKey(ignore: true)
  @override
  _$EventCopyWith<_Event> get copyWith =>
      __$EventCopyWithImpl<_Event>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EventToJson(this);
  }
}

abstract class _Event extends Event {
  factory _Event(
      {required String id,
      required String name,
      required EventStatus status,
      required String communityId,
      required EventCategory category,
      required String description,
      required String organizerId,
      required List<String> yesParticipantIds,
      required List<String> maybeParticipantIds,
      required List<String> noParticipantIds,
      String? backgroundUrl}) = _$_Event;
  _Event._() : super._();

  factory _Event.fromJson(Map<String, dynamic> json) = _$_Event.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  EventStatus get status => throw _privateConstructorUsedError;
  @override
  String get communityId => throw _privateConstructorUsedError;
  @override
  EventCategory get category => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get organizerId => throw _privateConstructorUsedError;
  @override
  List<String> get yesParticipantIds => throw _privateConstructorUsedError;
  @override
  List<String> get maybeParticipantIds => throw _privateConstructorUsedError;
  @override
  List<String> get noParticipantIds => throw _privateConstructorUsedError;
  @override
  String? get backgroundUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EventCopyWith<_Event> get copyWith => throw _privateConstructorUsedError;
}

EventsUnion _$EventsUnionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'default':
      return Events.fromJson(json);
    case 'error':
      return EventsError.fromJson(json);
    case 'loading':
      return EventsLoading.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$EventsUnionTearOff {
  const _$EventsUnionTearOff();

  Events call({@JsonKey(name: 'events') required List<Event> events}) {
    return Events(
      events: events,
    );
  }

  EventsError error(ErrorResult error) {
    return EventsError(
      error,
    );
  }

  EventsLoading loading() {
    return EventsLoading();
  }

  EventsUnion fromJson(Map<String, Object> json) {
    return EventsUnion.fromJson(json);
  }
}

/// @nodoc
const $EventsUnion = _$EventsUnionTearOff();

/// @nodoc
mixin _$EventsUnion {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'events') List<Event> events) $default, {
    required TResult Function(ErrorResult error) error,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'events') List<Event> events)? $default, {
    TResult Function(ErrorResult error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Events value) $default, {
    required TResult Function(EventsError value) error,
    required TResult Function(EventsLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Events value)? $default, {
    TResult Function(EventsError value)? error,
    TResult Function(EventsLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsUnionCopyWith<$Res> {
  factory $EventsUnionCopyWith(
          EventsUnion value, $Res Function(EventsUnion) then) =
      _$EventsUnionCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventsUnionCopyWithImpl<$Res> implements $EventsUnionCopyWith<$Res> {
  _$EventsUnionCopyWithImpl(this._value, this._then);

  final EventsUnion _value;
  // ignore: unused_field
  final $Res Function(EventsUnion) _then;
}

/// @nodoc
abstract class $EventsCopyWith<$Res> {
  factory $EventsCopyWith(Events value, $Res Function(Events) then) =
      _$EventsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'events') List<Event> events});
}

/// @nodoc
class _$EventsCopyWithImpl<$Res> extends _$EventsUnionCopyWithImpl<$Res>
    implements $EventsCopyWith<$Res> {
  _$EventsCopyWithImpl(Events _value, $Res Function(Events) _then)
      : super(_value, (v) => _then(v as Events));

  @override
  Events get _value => super._value as Events;

  @override
  $Res call({
    Object? events = freezed,
  }) {
    return _then(Events(
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Events extends Events {
  _$Events({@JsonKey(name: 'events') required this.events}) : super._();

  factory _$Events.fromJson(Map<String, dynamic> json) =>
      _$_$EventsFromJson(json);

  @override
  @JsonKey(name: 'events')
  final List<Event> events;

  @override
  String toString() {
    return 'EventsUnion(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Events &&
            (identical(other.events, events) ||
                const DeepCollectionEquality().equals(other.events, events)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(events);

  @JsonKey(ignore: true)
  @override
  $EventsCopyWith<Events> get copyWith =>
      _$EventsCopyWithImpl<Events>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'events') List<Event> events) $default, {
    required TResult Function(ErrorResult error) error,
    required TResult Function() loading,
  }) {
    return $default(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'events') List<Event> events)? $default, {
    TResult Function(ErrorResult error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Events value) $default, {
    required TResult Function(EventsError value) error,
    required TResult Function(EventsLoading value) loading,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Events value)? $default, {
    TResult Function(EventsError value)? error,
    TResult Function(EventsLoading value)? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$EventsToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class Events extends EventsUnion {
  factory Events({@JsonKey(name: 'events') required List<Event> events}) =
      _$Events;
  Events._() : super._();

  factory Events.fromJson(Map<String, dynamic> json) = _$Events.fromJson;

  @JsonKey(name: 'events')
  List<Event> get events => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventsCopyWith<Events> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsErrorCopyWith<$Res> {
  factory $EventsErrorCopyWith(
          EventsError value, $Res Function(EventsError) then) =
      _$EventsErrorCopyWithImpl<$Res>;
  $Res call({ErrorResult error});

  $ErrorResultCopyWith<$Res> get error;
}

/// @nodoc
class _$EventsErrorCopyWithImpl<$Res> extends _$EventsUnionCopyWithImpl<$Res>
    implements $EventsErrorCopyWith<$Res> {
  _$EventsErrorCopyWithImpl(
      EventsError _value, $Res Function(EventsError) _then)
      : super(_value, (v) => _then(v as EventsError));

  @override
  EventsError get _value => super._value as EventsError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(EventsError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResult,
    ));
  }

  @override
  $ErrorResultCopyWith<$Res> get error {
    return $ErrorResultCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$EventsError extends EventsError {
  _$EventsError(this.error) : super._();

  factory _$EventsError.fromJson(Map<String, dynamic> json) =>
      _$_$EventsErrorFromJson(json);

  @override
  final ErrorResult error;

  @override
  String toString() {
    return 'EventsUnion.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EventsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $EventsErrorCopyWith<EventsError> get copyWith =>
      _$EventsErrorCopyWithImpl<EventsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'events') List<Event> events) $default, {
    required TResult Function(ErrorResult error) error,
    required TResult Function() loading,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'events') List<Event> events)? $default, {
    TResult Function(ErrorResult error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Events value) $default, {
    required TResult Function(EventsError value) error,
    required TResult Function(EventsLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Events value)? $default, {
    TResult Function(EventsError value)? error,
    TResult Function(EventsLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$EventsErrorToJson(this)..['runtimeType'] = 'error';
  }
}

abstract class EventsError extends EventsUnion {
  factory EventsError(ErrorResult error) = _$EventsError;
  EventsError._() : super._();

  factory EventsError.fromJson(Map<String, dynamic> json) =
      _$EventsError.fromJson;

  ErrorResult get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventsErrorCopyWith<EventsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsLoadingCopyWith<$Res> {
  factory $EventsLoadingCopyWith(
          EventsLoading value, $Res Function(EventsLoading) then) =
      _$EventsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventsLoadingCopyWithImpl<$Res> extends _$EventsUnionCopyWithImpl<$Res>
    implements $EventsLoadingCopyWith<$Res> {
  _$EventsLoadingCopyWithImpl(
      EventsLoading _value, $Res Function(EventsLoading) _then)
      : super(_value, (v) => _then(v as EventsLoading));

  @override
  EventsLoading get _value => super._value as EventsLoading;
}

/// @nodoc
@JsonSerializable()
class _$EventsLoading extends EventsLoading {
  _$EventsLoading() : super._();

  factory _$EventsLoading.fromJson(Map<String, dynamic> json) =>
      _$_$EventsLoadingFromJson(json);

  @override
  String toString() {
    return 'EventsUnion.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EventsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'events') List<Event> events) $default, {
    required TResult Function(ErrorResult error) error,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'events') List<Event> events)? $default, {
    TResult Function(ErrorResult error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Events value) $default, {
    required TResult Function(EventsError value) error,
    required TResult Function(EventsLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Events value)? $default, {
    TResult Function(EventsError value)? error,
    TResult Function(EventsLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$EventsLoadingToJson(this)..['runtimeType'] = 'loading';
  }
}

abstract class EventsLoading extends EventsUnion {
  factory EventsLoading() = _$EventsLoading;
  EventsLoading._() : super._();

  factory EventsLoading.fromJson(Map<String, dynamic> json) =
      _$EventsLoading.fromJson;
}

EventSectionItemUnion _$EventSectionItemUnionFromJson(
    Map<String, dynamic> json) {
  switch (json['type'] as String) {
    case 'location':
      return EventLocationSection.fromJson(json);
    case 'time':
      return EventTimeSection.fromJson(json);
    case 'lunch':
      return EventLunchSection.fromJson(json);
    case 'dinner':
      return EventDinnerSection.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$EventSectionItemUnionTearOff {
  const _$EventSectionItemUnionTearOff();

  EventLocationSection location(
      {required String id,
      required String eventId,
      required String communityId,
      required String type,
      required EventDecision decision,
      required String title,
      required String subtitle,
      required List<String> yesParticipantIds,
      required List<String> maybeParticipantIds,
      required List<String> noParticipantIds}) {
    return EventLocationSection(
      id: id,
      eventId: eventId,
      communityId: communityId,
      type: type,
      decision: decision,
      title: title,
      subtitle: subtitle,
      yesParticipantIds: yesParticipantIds,
      maybeParticipantIds: maybeParticipantIds,
      noParticipantIds: noParticipantIds,
    );
  }

  EventTimeSection time(
      {required String id,
      required String eventId,
      required String communityId,
      required String type,
      required EventDecision decision,
      required String title,
      required String subtitle,
      required List<String> yesParticipantIds,
      required List<String> maybeParticipantIds,
      required List<String> noParticipantIds}) {
    return EventTimeSection(
      id: id,
      eventId: eventId,
      communityId: communityId,
      type: type,
      decision: decision,
      title: title,
      subtitle: subtitle,
      yesParticipantIds: yesParticipantIds,
      maybeParticipantIds: maybeParticipantIds,
      noParticipantIds: noParticipantIds,
    );
  }

  EventLunchSection lunch(
      {required String id,
      required String eventId,
      required String communityId,
      required String type,
      required EventDecision decision,
      required String title,
      required String subtitle,
      required List<String> yesParticipantIds,
      required List<String> maybeParticipantIds,
      required List<String> noParticipantIds}) {
    return EventLunchSection(
      id: id,
      eventId: eventId,
      communityId: communityId,
      type: type,
      decision: decision,
      title: title,
      subtitle: subtitle,
      yesParticipantIds: yesParticipantIds,
      maybeParticipantIds: maybeParticipantIds,
      noParticipantIds: noParticipantIds,
    );
  }

  EventDinnerSection dinner(
      {required String id,
      required String eventId,
      required String communityId,
      required String type,
      required EventDecision decision,
      required String title,
      required String subtitle,
      required List<String> yesParticipantIds,
      required List<String> maybeParticipantIds,
      required List<String> noParticipantIds}) {
    return EventDinnerSection(
      id: id,
      eventId: eventId,
      communityId: communityId,
      type: type,
      decision: decision,
      title: title,
      subtitle: subtitle,
      yesParticipantIds: yesParticipantIds,
      maybeParticipantIds: maybeParticipantIds,
      noParticipantIds: noParticipantIds,
    );
  }

  EventSectionItemUnion fromJson(Map<String, Object> json) {
    return EventSectionItemUnion.fromJson(json);
  }
}

/// @nodoc
const $EventSectionItemUnion = _$EventSectionItemUnionTearOff();

/// @nodoc
mixin _$EventSectionItemUnion {
  String get id => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  String get communityId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  EventDecision get decision => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  List<String> get yesParticipantIds => throw _privateConstructorUsedError;
  List<String> get maybeParticipantIds => throw _privateConstructorUsedError;
  List<String> get noParticipantIds => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)
        location,
    required TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)
        time,
    required TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)
        lunch,
    required TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)
        dinner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)?
        location,
    TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)?
        time,
    TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)?
        lunch,
    TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)?
        dinner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventLocationSection value) location,
    required TResult Function(EventTimeSection value) time,
    required TResult Function(EventLunchSection value) lunch,
    required TResult Function(EventDinnerSection value) dinner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventLocationSection value)? location,
    TResult Function(EventTimeSection value)? time,
    TResult Function(EventLunchSection value)? lunch,
    TResult Function(EventDinnerSection value)? dinner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventSectionItemUnionCopyWith<EventSectionItemUnion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventSectionItemUnionCopyWith<$Res> {
  factory $EventSectionItemUnionCopyWith(EventSectionItemUnion value,
          $Res Function(EventSectionItemUnion) then) =
      _$EventSectionItemUnionCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String eventId,
      String communityId,
      String type,
      EventDecision decision,
      String title,
      String subtitle,
      List<String> yesParticipantIds,
      List<String> maybeParticipantIds,
      List<String> noParticipantIds});
}

/// @nodoc
class _$EventSectionItemUnionCopyWithImpl<$Res>
    implements $EventSectionItemUnionCopyWith<$Res> {
  _$EventSectionItemUnionCopyWithImpl(this._value, this._then);

  final EventSectionItemUnion _value;
  // ignore: unused_field
  final $Res Function(EventSectionItemUnion) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? eventId = freezed,
    Object? communityId = freezed,
    Object? type = freezed,
    Object? decision = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? yesParticipantIds = freezed,
    Object? maybeParticipantIds = freezed,
    Object? noParticipantIds = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      communityId: communityId == freezed
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      decision: decision == freezed
          ? _value.decision
          : decision // ignore: cast_nullable_to_non_nullable
              as EventDecision,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      yesParticipantIds: yesParticipantIds == freezed
          ? _value.yesParticipantIds
          : yesParticipantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maybeParticipantIds: maybeParticipantIds == freezed
          ? _value.maybeParticipantIds
          : maybeParticipantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      noParticipantIds: noParticipantIds == freezed
          ? _value.noParticipantIds
          : noParticipantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class $EventLocationSectionCopyWith<$Res>
    implements $EventSectionItemUnionCopyWith<$Res> {
  factory $EventLocationSectionCopyWith(EventLocationSection value,
          $Res Function(EventLocationSection) then) =
      _$EventLocationSectionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String eventId,
      String communityId,
      String type,
      EventDecision decision,
      String title,
      String subtitle,
      List<String> yesParticipantIds,
      List<String> maybeParticipantIds,
      List<String> noParticipantIds});
}

/// @nodoc
class _$EventLocationSectionCopyWithImpl<$Res>
    extends _$EventSectionItemUnionCopyWithImpl<$Res>
    implements $EventLocationSectionCopyWith<$Res> {
  _$EventLocationSectionCopyWithImpl(
      EventLocationSection _value, $Res Function(EventLocationSection) _then)
      : super(_value, (v) => _then(v as EventLocationSection));

  @override
  EventLocationSection get _value => super._value as EventLocationSection;

  @override
  $Res call({
    Object? id = freezed,
    Object? eventId = freezed,
    Object? communityId = freezed,
    Object? type = freezed,
    Object? decision = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? yesParticipantIds = freezed,
    Object? maybeParticipantIds = freezed,
    Object? noParticipantIds = freezed,
  }) {
    return _then(EventLocationSection(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      communityId: communityId == freezed
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      decision: decision == freezed
          ? _value.decision
          : decision // ignore: cast_nullable_to_non_nullable
              as EventDecision,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      yesParticipantIds: yesParticipantIds == freezed
          ? _value.yesParticipantIds
          : yesParticipantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maybeParticipantIds: maybeParticipantIds == freezed
          ? _value.maybeParticipantIds
          : maybeParticipantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      noParticipantIds: noParticipantIds == freezed
          ? _value.noParticipantIds
          : noParticipantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventLocationSection extends EventLocationSection {
  _$EventLocationSection(
      {required this.id,
      required this.eventId,
      required this.communityId,
      required this.type,
      required this.decision,
      required this.title,
      required this.subtitle,
      required this.yesParticipantIds,
      required this.maybeParticipantIds,
      required this.noParticipantIds})
      : super._();

  factory _$EventLocationSection.fromJson(Map<String, dynamic> json) =>
      _$_$EventLocationSectionFromJson(json);

  @override
  final String id;
  @override
  final String eventId;
  @override
  final String communityId;
  @override
  final String type;
  @override
  final EventDecision decision;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final List<String> yesParticipantIds;
  @override
  final List<String> maybeParticipantIds;
  @override
  final List<String> noParticipantIds;

  @override
  String toString() {
    return 'EventSectionItemUnion.location(id: $id, eventId: $eventId, communityId: $communityId, type: $type, decision: $decision, title: $title, subtitle: $subtitle, yesParticipantIds: $yesParticipantIds, maybeParticipantIds: $maybeParticipantIds, noParticipantIds: $noParticipantIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EventLocationSection &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.eventId, eventId) ||
                const DeepCollectionEquality()
                    .equals(other.eventId, eventId)) &&
            (identical(other.communityId, communityId) ||
                const DeepCollectionEquality()
                    .equals(other.communityId, communityId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.decision, decision) ||
                const DeepCollectionEquality()
                    .equals(other.decision, decision)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.subtitle, subtitle) ||
                const DeepCollectionEquality()
                    .equals(other.subtitle, subtitle)) &&
            (identical(other.yesParticipantIds, yesParticipantIds) ||
                const DeepCollectionEquality()
                    .equals(other.yesParticipantIds, yesParticipantIds)) &&
            (identical(other.maybeParticipantIds, maybeParticipantIds) ||
                const DeepCollectionEquality()
                    .equals(other.maybeParticipantIds, maybeParticipantIds)) &&
            (identical(other.noParticipantIds, noParticipantIds) ||
                const DeepCollectionEquality()
                    .equals(other.noParticipantIds, noParticipantIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(eventId) ^
      const DeepCollectionEquality().hash(communityId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(decision) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(subtitle) ^
      const DeepCollectionEquality().hash(yesParticipantIds) ^
      const DeepCollectionEquality().hash(maybeParticipantIds) ^
      const DeepCollectionEquality().hash(noParticipantIds);

  @JsonKey(ignore: true)
  @override
  $EventLocationSectionCopyWith<EventLocationSection> get copyWith =>
      _$EventLocationSectionCopyWithImpl<EventLocationSection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)
        location,
    required TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)
        time,
    required TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)
        lunch,
    required TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)
        dinner,
  }) {
    return location(id, eventId, communityId, type, decision, title, subtitle,
        yesParticipantIds, maybeParticipantIds, noParticipantIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)?
        location,
    TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)?
        time,
    TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)?
        lunch,
    TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)?
        dinner,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(id, eventId, communityId, type, decision, title, subtitle,
          yesParticipantIds, maybeParticipantIds, noParticipantIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventLocationSection value) location,
    required TResult Function(EventTimeSection value) time,
    required TResult Function(EventLunchSection value) lunch,
    required TResult Function(EventDinnerSection value) dinner,
  }) {
    return location(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventLocationSection value)? location,
    TResult Function(EventTimeSection value)? time,
    TResult Function(EventLunchSection value)? lunch,
    TResult Function(EventDinnerSection value)? dinner,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$EventLocationSectionToJson(this)..['type'] = 'location';
  }
}

abstract class EventLocationSection extends EventSectionItemUnion {
  factory EventLocationSection(
      {required String id,
      required String eventId,
      required String communityId,
      required String type,
      required EventDecision decision,
      required String title,
      required String subtitle,
      required List<String> yesParticipantIds,
      required List<String> maybeParticipantIds,
      required List<String> noParticipantIds}) = _$EventLocationSection;
  EventLocationSection._() : super._();

  factory EventLocationSection.fromJson(Map<String, dynamic> json) =
      _$EventLocationSection.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get eventId => throw _privateConstructorUsedError;
  @override
  String get communityId => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  EventDecision get decision => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get subtitle => throw _privateConstructorUsedError;
  @override
  List<String> get yesParticipantIds => throw _privateConstructorUsedError;
  @override
  List<String> get maybeParticipantIds => throw _privateConstructorUsedError;
  @override
  List<String> get noParticipantIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EventLocationSectionCopyWith<EventLocationSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventTimeSectionCopyWith<$Res>
    implements $EventSectionItemUnionCopyWith<$Res> {
  factory $EventTimeSectionCopyWith(
          EventTimeSection value, $Res Function(EventTimeSection) then) =
      _$EventTimeSectionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String eventId,
      String communityId,
      String type,
      EventDecision decision,
      String title,
      String subtitle,
      List<String> yesParticipantIds,
      List<String> maybeParticipantIds,
      List<String> noParticipantIds});
}

/// @nodoc
class _$EventTimeSectionCopyWithImpl<$Res>
    extends _$EventSectionItemUnionCopyWithImpl<$Res>
    implements $EventTimeSectionCopyWith<$Res> {
  _$EventTimeSectionCopyWithImpl(
      EventTimeSection _value, $Res Function(EventTimeSection) _then)
      : super(_value, (v) => _then(v as EventTimeSection));

  @override
  EventTimeSection get _value => super._value as EventTimeSection;

  @override
  $Res call({
    Object? id = freezed,
    Object? eventId = freezed,
    Object? communityId = freezed,
    Object? type = freezed,
    Object? decision = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? yesParticipantIds = freezed,
    Object? maybeParticipantIds = freezed,
    Object? noParticipantIds = freezed,
  }) {
    return _then(EventTimeSection(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      communityId: communityId == freezed
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      decision: decision == freezed
          ? _value.decision
          : decision // ignore: cast_nullable_to_non_nullable
              as EventDecision,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      yesParticipantIds: yesParticipantIds == freezed
          ? _value.yesParticipantIds
          : yesParticipantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maybeParticipantIds: maybeParticipantIds == freezed
          ? _value.maybeParticipantIds
          : maybeParticipantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      noParticipantIds: noParticipantIds == freezed
          ? _value.noParticipantIds
          : noParticipantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventTimeSection extends EventTimeSection {
  _$EventTimeSection(
      {required this.id,
      required this.eventId,
      required this.communityId,
      required this.type,
      required this.decision,
      required this.title,
      required this.subtitle,
      required this.yesParticipantIds,
      required this.maybeParticipantIds,
      required this.noParticipantIds})
      : super._();

  factory _$EventTimeSection.fromJson(Map<String, dynamic> json) =>
      _$_$EventTimeSectionFromJson(json);

  @override
  final String id;
  @override
  final String eventId;
  @override
  final String communityId;
  @override
  final String type;
  @override
  final EventDecision decision;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final List<String> yesParticipantIds;
  @override
  final List<String> maybeParticipantIds;
  @override
  final List<String> noParticipantIds;

  @override
  String toString() {
    return 'EventSectionItemUnion.time(id: $id, eventId: $eventId, communityId: $communityId, type: $type, decision: $decision, title: $title, subtitle: $subtitle, yesParticipantIds: $yesParticipantIds, maybeParticipantIds: $maybeParticipantIds, noParticipantIds: $noParticipantIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EventTimeSection &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.eventId, eventId) ||
                const DeepCollectionEquality()
                    .equals(other.eventId, eventId)) &&
            (identical(other.communityId, communityId) ||
                const DeepCollectionEquality()
                    .equals(other.communityId, communityId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.decision, decision) ||
                const DeepCollectionEquality()
                    .equals(other.decision, decision)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.subtitle, subtitle) ||
                const DeepCollectionEquality()
                    .equals(other.subtitle, subtitle)) &&
            (identical(other.yesParticipantIds, yesParticipantIds) ||
                const DeepCollectionEquality()
                    .equals(other.yesParticipantIds, yesParticipantIds)) &&
            (identical(other.maybeParticipantIds, maybeParticipantIds) ||
                const DeepCollectionEquality()
                    .equals(other.maybeParticipantIds, maybeParticipantIds)) &&
            (identical(other.noParticipantIds, noParticipantIds) ||
                const DeepCollectionEquality()
                    .equals(other.noParticipantIds, noParticipantIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(eventId) ^
      const DeepCollectionEquality().hash(communityId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(decision) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(subtitle) ^
      const DeepCollectionEquality().hash(yesParticipantIds) ^
      const DeepCollectionEquality().hash(maybeParticipantIds) ^
      const DeepCollectionEquality().hash(noParticipantIds);

  @JsonKey(ignore: true)
  @override
  $EventTimeSectionCopyWith<EventTimeSection> get copyWith =>
      _$EventTimeSectionCopyWithImpl<EventTimeSection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)
        location,
    required TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)
        time,
    required TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)
        lunch,
    required TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)
        dinner,
  }) {
    return time(id, eventId, communityId, type, decision, title, subtitle,
        yesParticipantIds, maybeParticipantIds, noParticipantIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)?
        location,
    TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)?
        time,
    TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)?
        lunch,
    TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)?
        dinner,
    required TResult orElse(),
  }) {
    if (time != null) {
      return time(id, eventId, communityId, type, decision, title, subtitle,
          yesParticipantIds, maybeParticipantIds, noParticipantIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventLocationSection value) location,
    required TResult Function(EventTimeSection value) time,
    required TResult Function(EventLunchSection value) lunch,
    required TResult Function(EventDinnerSection value) dinner,
  }) {
    return time(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventLocationSection value)? location,
    TResult Function(EventTimeSection value)? time,
    TResult Function(EventLunchSection value)? lunch,
    TResult Function(EventDinnerSection value)? dinner,
    required TResult orElse(),
  }) {
    if (time != null) {
      return time(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$EventTimeSectionToJson(this)..['type'] = 'time';
  }
}

abstract class EventTimeSection extends EventSectionItemUnion {
  factory EventTimeSection(
      {required String id,
      required String eventId,
      required String communityId,
      required String type,
      required EventDecision decision,
      required String title,
      required String subtitle,
      required List<String> yesParticipantIds,
      required List<String> maybeParticipantIds,
      required List<String> noParticipantIds}) = _$EventTimeSection;
  EventTimeSection._() : super._();

  factory EventTimeSection.fromJson(Map<String, dynamic> json) =
      _$EventTimeSection.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get eventId => throw _privateConstructorUsedError;
  @override
  String get communityId => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  EventDecision get decision => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get subtitle => throw _privateConstructorUsedError;
  @override
  List<String> get yesParticipantIds => throw _privateConstructorUsedError;
  @override
  List<String> get maybeParticipantIds => throw _privateConstructorUsedError;
  @override
  List<String> get noParticipantIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EventTimeSectionCopyWith<EventTimeSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventLunchSectionCopyWith<$Res>
    implements $EventSectionItemUnionCopyWith<$Res> {
  factory $EventLunchSectionCopyWith(
          EventLunchSection value, $Res Function(EventLunchSection) then) =
      _$EventLunchSectionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String eventId,
      String communityId,
      String type,
      EventDecision decision,
      String title,
      String subtitle,
      List<String> yesParticipantIds,
      List<String> maybeParticipantIds,
      List<String> noParticipantIds});
}

/// @nodoc
class _$EventLunchSectionCopyWithImpl<$Res>
    extends _$EventSectionItemUnionCopyWithImpl<$Res>
    implements $EventLunchSectionCopyWith<$Res> {
  _$EventLunchSectionCopyWithImpl(
      EventLunchSection _value, $Res Function(EventLunchSection) _then)
      : super(_value, (v) => _then(v as EventLunchSection));

  @override
  EventLunchSection get _value => super._value as EventLunchSection;

  @override
  $Res call({
    Object? id = freezed,
    Object? eventId = freezed,
    Object? communityId = freezed,
    Object? type = freezed,
    Object? decision = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? yesParticipantIds = freezed,
    Object? maybeParticipantIds = freezed,
    Object? noParticipantIds = freezed,
  }) {
    return _then(EventLunchSection(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      communityId: communityId == freezed
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      decision: decision == freezed
          ? _value.decision
          : decision // ignore: cast_nullable_to_non_nullable
              as EventDecision,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      yesParticipantIds: yesParticipantIds == freezed
          ? _value.yesParticipantIds
          : yesParticipantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maybeParticipantIds: maybeParticipantIds == freezed
          ? _value.maybeParticipantIds
          : maybeParticipantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      noParticipantIds: noParticipantIds == freezed
          ? _value.noParticipantIds
          : noParticipantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventLunchSection extends EventLunchSection {
  _$EventLunchSection(
      {required this.id,
      required this.eventId,
      required this.communityId,
      required this.type,
      required this.decision,
      required this.title,
      required this.subtitle,
      required this.yesParticipantIds,
      required this.maybeParticipantIds,
      required this.noParticipantIds})
      : super._();

  factory _$EventLunchSection.fromJson(Map<String, dynamic> json) =>
      _$_$EventLunchSectionFromJson(json);

  @override
  final String id;
  @override
  final String eventId;
  @override
  final String communityId;
  @override
  final String type;
  @override
  final EventDecision decision;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final List<String> yesParticipantIds;
  @override
  final List<String> maybeParticipantIds;
  @override
  final List<String> noParticipantIds;

  @override
  String toString() {
    return 'EventSectionItemUnion.lunch(id: $id, eventId: $eventId, communityId: $communityId, type: $type, decision: $decision, title: $title, subtitle: $subtitle, yesParticipantIds: $yesParticipantIds, maybeParticipantIds: $maybeParticipantIds, noParticipantIds: $noParticipantIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EventLunchSection &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.eventId, eventId) ||
                const DeepCollectionEquality()
                    .equals(other.eventId, eventId)) &&
            (identical(other.communityId, communityId) ||
                const DeepCollectionEquality()
                    .equals(other.communityId, communityId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.decision, decision) ||
                const DeepCollectionEquality()
                    .equals(other.decision, decision)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.subtitle, subtitle) ||
                const DeepCollectionEquality()
                    .equals(other.subtitle, subtitle)) &&
            (identical(other.yesParticipantIds, yesParticipantIds) ||
                const DeepCollectionEquality()
                    .equals(other.yesParticipantIds, yesParticipantIds)) &&
            (identical(other.maybeParticipantIds, maybeParticipantIds) ||
                const DeepCollectionEquality()
                    .equals(other.maybeParticipantIds, maybeParticipantIds)) &&
            (identical(other.noParticipantIds, noParticipantIds) ||
                const DeepCollectionEquality()
                    .equals(other.noParticipantIds, noParticipantIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(eventId) ^
      const DeepCollectionEquality().hash(communityId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(decision) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(subtitle) ^
      const DeepCollectionEquality().hash(yesParticipantIds) ^
      const DeepCollectionEquality().hash(maybeParticipantIds) ^
      const DeepCollectionEquality().hash(noParticipantIds);

  @JsonKey(ignore: true)
  @override
  $EventLunchSectionCopyWith<EventLunchSection> get copyWith =>
      _$EventLunchSectionCopyWithImpl<EventLunchSection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)
        location,
    required TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)
        time,
    required TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)
        lunch,
    required TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)
        dinner,
  }) {
    return lunch(id, eventId, communityId, type, decision, title, subtitle,
        yesParticipantIds, maybeParticipantIds, noParticipantIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)?
        location,
    TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)?
        time,
    TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)?
        lunch,
    TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)?
        dinner,
    required TResult orElse(),
  }) {
    if (lunch != null) {
      return lunch(id, eventId, communityId, type, decision, title, subtitle,
          yesParticipantIds, maybeParticipantIds, noParticipantIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventLocationSection value) location,
    required TResult Function(EventTimeSection value) time,
    required TResult Function(EventLunchSection value) lunch,
    required TResult Function(EventDinnerSection value) dinner,
  }) {
    return lunch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventLocationSection value)? location,
    TResult Function(EventTimeSection value)? time,
    TResult Function(EventLunchSection value)? lunch,
    TResult Function(EventDinnerSection value)? dinner,
    required TResult orElse(),
  }) {
    if (lunch != null) {
      return lunch(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$EventLunchSectionToJson(this)..['type'] = 'lunch';
  }
}

abstract class EventLunchSection extends EventSectionItemUnion {
  factory EventLunchSection(
      {required String id,
      required String eventId,
      required String communityId,
      required String type,
      required EventDecision decision,
      required String title,
      required String subtitle,
      required List<String> yesParticipantIds,
      required List<String> maybeParticipantIds,
      required List<String> noParticipantIds}) = _$EventLunchSection;
  EventLunchSection._() : super._();

  factory EventLunchSection.fromJson(Map<String, dynamic> json) =
      _$EventLunchSection.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get eventId => throw _privateConstructorUsedError;
  @override
  String get communityId => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  EventDecision get decision => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get subtitle => throw _privateConstructorUsedError;
  @override
  List<String> get yesParticipantIds => throw _privateConstructorUsedError;
  @override
  List<String> get maybeParticipantIds => throw _privateConstructorUsedError;
  @override
  List<String> get noParticipantIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EventLunchSectionCopyWith<EventLunchSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDinnerSectionCopyWith<$Res>
    implements $EventSectionItemUnionCopyWith<$Res> {
  factory $EventDinnerSectionCopyWith(
          EventDinnerSection value, $Res Function(EventDinnerSection) then) =
      _$EventDinnerSectionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String eventId,
      String communityId,
      String type,
      EventDecision decision,
      String title,
      String subtitle,
      List<String> yesParticipantIds,
      List<String> maybeParticipantIds,
      List<String> noParticipantIds});
}

/// @nodoc
class _$EventDinnerSectionCopyWithImpl<$Res>
    extends _$EventSectionItemUnionCopyWithImpl<$Res>
    implements $EventDinnerSectionCopyWith<$Res> {
  _$EventDinnerSectionCopyWithImpl(
      EventDinnerSection _value, $Res Function(EventDinnerSection) _then)
      : super(_value, (v) => _then(v as EventDinnerSection));

  @override
  EventDinnerSection get _value => super._value as EventDinnerSection;

  @override
  $Res call({
    Object? id = freezed,
    Object? eventId = freezed,
    Object? communityId = freezed,
    Object? type = freezed,
    Object? decision = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? yesParticipantIds = freezed,
    Object? maybeParticipantIds = freezed,
    Object? noParticipantIds = freezed,
  }) {
    return _then(EventDinnerSection(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      communityId: communityId == freezed
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      decision: decision == freezed
          ? _value.decision
          : decision // ignore: cast_nullable_to_non_nullable
              as EventDecision,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      yesParticipantIds: yesParticipantIds == freezed
          ? _value.yesParticipantIds
          : yesParticipantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maybeParticipantIds: maybeParticipantIds == freezed
          ? _value.maybeParticipantIds
          : maybeParticipantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      noParticipantIds: noParticipantIds == freezed
          ? _value.noParticipantIds
          : noParticipantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventDinnerSection extends EventDinnerSection {
  _$EventDinnerSection(
      {required this.id,
      required this.eventId,
      required this.communityId,
      required this.type,
      required this.decision,
      required this.title,
      required this.subtitle,
      required this.yesParticipantIds,
      required this.maybeParticipantIds,
      required this.noParticipantIds})
      : super._();

  factory _$EventDinnerSection.fromJson(Map<String, dynamic> json) =>
      _$_$EventDinnerSectionFromJson(json);

  @override
  final String id;
  @override
  final String eventId;
  @override
  final String communityId;
  @override
  final String type;
  @override
  final EventDecision decision;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final List<String> yesParticipantIds;
  @override
  final List<String> maybeParticipantIds;
  @override
  final List<String> noParticipantIds;

  @override
  String toString() {
    return 'EventSectionItemUnion.dinner(id: $id, eventId: $eventId, communityId: $communityId, type: $type, decision: $decision, title: $title, subtitle: $subtitle, yesParticipantIds: $yesParticipantIds, maybeParticipantIds: $maybeParticipantIds, noParticipantIds: $noParticipantIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EventDinnerSection &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.eventId, eventId) ||
                const DeepCollectionEquality()
                    .equals(other.eventId, eventId)) &&
            (identical(other.communityId, communityId) ||
                const DeepCollectionEquality()
                    .equals(other.communityId, communityId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.decision, decision) ||
                const DeepCollectionEquality()
                    .equals(other.decision, decision)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.subtitle, subtitle) ||
                const DeepCollectionEquality()
                    .equals(other.subtitle, subtitle)) &&
            (identical(other.yesParticipantIds, yesParticipantIds) ||
                const DeepCollectionEquality()
                    .equals(other.yesParticipantIds, yesParticipantIds)) &&
            (identical(other.maybeParticipantIds, maybeParticipantIds) ||
                const DeepCollectionEquality()
                    .equals(other.maybeParticipantIds, maybeParticipantIds)) &&
            (identical(other.noParticipantIds, noParticipantIds) ||
                const DeepCollectionEquality()
                    .equals(other.noParticipantIds, noParticipantIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(eventId) ^
      const DeepCollectionEquality().hash(communityId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(decision) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(subtitle) ^
      const DeepCollectionEquality().hash(yesParticipantIds) ^
      const DeepCollectionEquality().hash(maybeParticipantIds) ^
      const DeepCollectionEquality().hash(noParticipantIds);

  @JsonKey(ignore: true)
  @override
  $EventDinnerSectionCopyWith<EventDinnerSection> get copyWith =>
      _$EventDinnerSectionCopyWithImpl<EventDinnerSection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)
        location,
    required TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)
        time,
    required TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)
        lunch,
    required TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)
        dinner,
  }) {
    return dinner(id, eventId, communityId, type, decision, title, subtitle,
        yesParticipantIds, maybeParticipantIds, noParticipantIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)?
        location,
    TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)?
        time,
    TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)?
        lunch,
    TResult Function(
            String id,
            String eventId,
            String communityId,
            String type,
            EventDecision decision,
            String title,
            String subtitle,
            List<String> yesParticipantIds,
            List<String> maybeParticipantIds,
            List<String> noParticipantIds)?
        dinner,
    required TResult orElse(),
  }) {
    if (dinner != null) {
      return dinner(id, eventId, communityId, type, decision, title, subtitle,
          yesParticipantIds, maybeParticipantIds, noParticipantIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventLocationSection value) location,
    required TResult Function(EventTimeSection value) time,
    required TResult Function(EventLunchSection value) lunch,
    required TResult Function(EventDinnerSection value) dinner,
  }) {
    return dinner(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventLocationSection value)? location,
    TResult Function(EventTimeSection value)? time,
    TResult Function(EventLunchSection value)? lunch,
    TResult Function(EventDinnerSection value)? dinner,
    required TResult orElse(),
  }) {
    if (dinner != null) {
      return dinner(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$EventDinnerSectionToJson(this)..['type'] = 'dinner';
  }
}

abstract class EventDinnerSection extends EventSectionItemUnion {
  factory EventDinnerSection(
      {required String id,
      required String eventId,
      required String communityId,
      required String type,
      required EventDecision decision,
      required String title,
      required String subtitle,
      required List<String> yesParticipantIds,
      required List<String> maybeParticipantIds,
      required List<String> noParticipantIds}) = _$EventDinnerSection;
  EventDinnerSection._() : super._();

  factory EventDinnerSection.fromJson(Map<String, dynamic> json) =
      _$EventDinnerSection.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get eventId => throw _privateConstructorUsedError;
  @override
  String get communityId => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  EventDecision get decision => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get subtitle => throw _privateConstructorUsedError;
  @override
  List<String> get yesParticipantIds => throw _privateConstructorUsedError;
  @override
  List<String> get maybeParticipantIds => throw _privateConstructorUsedError;
  @override
  List<String> get noParticipantIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EventDinnerSectionCopyWith<EventDinnerSection> get copyWith =>
      throw _privateConstructorUsedError;
}

EventSectionItemsUnion _$EventSectionItemsUnionFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'default':
      return EventSectionItems.fromJson(json);
    case 'error':
      return EventSectionItemsError.fromJson(json);
    case 'loading':
      return EventSectionItemsLoading.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$EventSectionItemsUnionTearOff {
  const _$EventSectionItemsUnionTearOff();

  EventSectionItems call(
      {@JsonKey(name: 'eventSections')
          required List<EventSectionItemUnion> eventSectionItems}) {
    return EventSectionItems(
      eventSectionItems: eventSectionItems,
    );
  }

  EventSectionItemsError error(ErrorResult error) {
    return EventSectionItemsError(
      error,
    );
  }

  EventSectionItemsLoading loading() {
    return EventSectionItemsLoading();
  }

  EventSectionItemsUnion fromJson(Map<String, Object> json) {
    return EventSectionItemsUnion.fromJson(json);
  }
}

/// @nodoc
const $EventSectionItemsUnion = _$EventSectionItemsUnionTearOff();

/// @nodoc
mixin _$EventSectionItemsUnion {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'eventSections')
                List<EventSectionItemUnion> eventSectionItems)
        $default, {
    required TResult Function(ErrorResult error) error,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'eventSections')
                List<EventSectionItemUnion> eventSectionItems)?
        $default, {
    TResult Function(ErrorResult error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(EventSectionItems value) $default, {
    required TResult Function(EventSectionItemsError value) error,
    required TResult Function(EventSectionItemsLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(EventSectionItems value)? $default, {
    TResult Function(EventSectionItemsError value)? error,
    TResult Function(EventSectionItemsLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventSectionItemsUnionCopyWith<$Res> {
  factory $EventSectionItemsUnionCopyWith(EventSectionItemsUnion value,
          $Res Function(EventSectionItemsUnion) then) =
      _$EventSectionItemsUnionCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventSectionItemsUnionCopyWithImpl<$Res>
    implements $EventSectionItemsUnionCopyWith<$Res> {
  _$EventSectionItemsUnionCopyWithImpl(this._value, this._then);

  final EventSectionItemsUnion _value;
  // ignore: unused_field
  final $Res Function(EventSectionItemsUnion) _then;
}

/// @nodoc
abstract class $EventSectionItemsCopyWith<$Res> {
  factory $EventSectionItemsCopyWith(
          EventSectionItems value, $Res Function(EventSectionItems) then) =
      _$EventSectionItemsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'eventSections')
          List<EventSectionItemUnion> eventSectionItems});
}

/// @nodoc
class _$EventSectionItemsCopyWithImpl<$Res>
    extends _$EventSectionItemsUnionCopyWithImpl<$Res>
    implements $EventSectionItemsCopyWith<$Res> {
  _$EventSectionItemsCopyWithImpl(
      EventSectionItems _value, $Res Function(EventSectionItems) _then)
      : super(_value, (v) => _then(v as EventSectionItems));

  @override
  EventSectionItems get _value => super._value as EventSectionItems;

  @override
  $Res call({
    Object? eventSectionItems = freezed,
  }) {
    return _then(EventSectionItems(
      eventSectionItems: eventSectionItems == freezed
          ? _value.eventSectionItems
          : eventSectionItems // ignore: cast_nullable_to_non_nullable
              as List<EventSectionItemUnion>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventSectionItems extends EventSectionItems {
  _$EventSectionItems(
      {@JsonKey(name: 'eventSections') required this.eventSectionItems})
      : super._();

  factory _$EventSectionItems.fromJson(Map<String, dynamic> json) =>
      _$_$EventSectionItemsFromJson(json);

  @override
  @JsonKey(name: 'eventSections')
  final List<EventSectionItemUnion> eventSectionItems;

  @override
  String toString() {
    return 'EventSectionItemsUnion(eventSectionItems: $eventSectionItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EventSectionItems &&
            (identical(other.eventSectionItems, eventSectionItems) ||
                const DeepCollectionEquality()
                    .equals(other.eventSectionItems, eventSectionItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(eventSectionItems);

  @JsonKey(ignore: true)
  @override
  $EventSectionItemsCopyWith<EventSectionItems> get copyWith =>
      _$EventSectionItemsCopyWithImpl<EventSectionItems>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'eventSections')
                List<EventSectionItemUnion> eventSectionItems)
        $default, {
    required TResult Function(ErrorResult error) error,
    required TResult Function() loading,
  }) {
    return $default(eventSectionItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'eventSections')
                List<EventSectionItemUnion> eventSectionItems)?
        $default, {
    TResult Function(ErrorResult error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(eventSectionItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(EventSectionItems value) $default, {
    required TResult Function(EventSectionItemsError value) error,
    required TResult Function(EventSectionItemsLoading value) loading,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(EventSectionItems value)? $default, {
    TResult Function(EventSectionItemsError value)? error,
    TResult Function(EventSectionItemsLoading value)? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$EventSectionItemsToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class EventSectionItems extends EventSectionItemsUnion {
  factory EventSectionItems(
          {@JsonKey(name: 'eventSections')
              required List<EventSectionItemUnion> eventSectionItems}) =
      _$EventSectionItems;
  EventSectionItems._() : super._();

  factory EventSectionItems.fromJson(Map<String, dynamic> json) =
      _$EventSectionItems.fromJson;

  @JsonKey(name: 'eventSections')
  List<EventSectionItemUnion> get eventSectionItems =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventSectionItemsCopyWith<EventSectionItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventSectionItemsErrorCopyWith<$Res> {
  factory $EventSectionItemsErrorCopyWith(EventSectionItemsError value,
          $Res Function(EventSectionItemsError) then) =
      _$EventSectionItemsErrorCopyWithImpl<$Res>;
  $Res call({ErrorResult error});

  $ErrorResultCopyWith<$Res> get error;
}

/// @nodoc
class _$EventSectionItemsErrorCopyWithImpl<$Res>
    extends _$EventSectionItemsUnionCopyWithImpl<$Res>
    implements $EventSectionItemsErrorCopyWith<$Res> {
  _$EventSectionItemsErrorCopyWithImpl(EventSectionItemsError _value,
      $Res Function(EventSectionItemsError) _then)
      : super(_value, (v) => _then(v as EventSectionItemsError));

  @override
  EventSectionItemsError get _value => super._value as EventSectionItemsError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(EventSectionItemsError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResult,
    ));
  }

  @override
  $ErrorResultCopyWith<$Res> get error {
    return $ErrorResultCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$EventSectionItemsError extends EventSectionItemsError {
  _$EventSectionItemsError(this.error) : super._();

  factory _$EventSectionItemsError.fromJson(Map<String, dynamic> json) =>
      _$_$EventSectionItemsErrorFromJson(json);

  @override
  final ErrorResult error;

  @override
  String toString() {
    return 'EventSectionItemsUnion.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EventSectionItemsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $EventSectionItemsErrorCopyWith<EventSectionItemsError> get copyWith =>
      _$EventSectionItemsErrorCopyWithImpl<EventSectionItemsError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'eventSections')
                List<EventSectionItemUnion> eventSectionItems)
        $default, {
    required TResult Function(ErrorResult error) error,
    required TResult Function() loading,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'eventSections')
                List<EventSectionItemUnion> eventSectionItems)?
        $default, {
    TResult Function(ErrorResult error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(EventSectionItems value) $default, {
    required TResult Function(EventSectionItemsError value) error,
    required TResult Function(EventSectionItemsLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(EventSectionItems value)? $default, {
    TResult Function(EventSectionItemsError value)? error,
    TResult Function(EventSectionItemsLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$EventSectionItemsErrorToJson(this)..['runtimeType'] = 'error';
  }
}

abstract class EventSectionItemsError extends EventSectionItemsUnion {
  factory EventSectionItemsError(ErrorResult error) = _$EventSectionItemsError;
  EventSectionItemsError._() : super._();

  factory EventSectionItemsError.fromJson(Map<String, dynamic> json) =
      _$EventSectionItemsError.fromJson;

  ErrorResult get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventSectionItemsErrorCopyWith<EventSectionItemsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventSectionItemsLoadingCopyWith<$Res> {
  factory $EventSectionItemsLoadingCopyWith(EventSectionItemsLoading value,
          $Res Function(EventSectionItemsLoading) then) =
      _$EventSectionItemsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventSectionItemsLoadingCopyWithImpl<$Res>
    extends _$EventSectionItemsUnionCopyWithImpl<$Res>
    implements $EventSectionItemsLoadingCopyWith<$Res> {
  _$EventSectionItemsLoadingCopyWithImpl(EventSectionItemsLoading _value,
      $Res Function(EventSectionItemsLoading) _then)
      : super(_value, (v) => _then(v as EventSectionItemsLoading));

  @override
  EventSectionItemsLoading get _value =>
      super._value as EventSectionItemsLoading;
}

/// @nodoc
@JsonSerializable()
class _$EventSectionItemsLoading extends EventSectionItemsLoading {
  _$EventSectionItemsLoading() : super._();

  factory _$EventSectionItemsLoading.fromJson(Map<String, dynamic> json) =>
      _$_$EventSectionItemsLoadingFromJson(json);

  @override
  String toString() {
    return 'EventSectionItemsUnion.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EventSectionItemsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'eventSections')
                List<EventSectionItemUnion> eventSectionItems)
        $default, {
    required TResult Function(ErrorResult error) error,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'eventSections')
                List<EventSectionItemUnion> eventSectionItems)?
        $default, {
    TResult Function(ErrorResult error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(EventSectionItems value) $default, {
    required TResult Function(EventSectionItemsError value) error,
    required TResult Function(EventSectionItemsLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(EventSectionItems value)? $default, {
    TResult Function(EventSectionItemsError value)? error,
    TResult Function(EventSectionItemsLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$EventSectionItemsLoadingToJson(this)
      ..['runtimeType'] = 'loading';
  }
}

abstract class EventSectionItemsLoading extends EventSectionItemsUnion {
  factory EventSectionItemsLoading() = _$EventSectionItemsLoading;
  EventSectionItemsLoading._() : super._();

  factory EventSectionItemsLoading.fromJson(Map<String, dynamic> json) =
      _$EventSectionItemsLoading.fromJson;
}
