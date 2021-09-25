// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required String name,
      required List<String> communityIds,
      String? avatarUrl}) {
    return _User(
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
  $Res call({String name, List<String> communityIds, String? avatarUrl});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? communityIds = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
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
  $Res call({String name, List<String> communityIds, String? avatarUrl});
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
    Object? name = freezed,
    Object? communityIds = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_User(
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
  _$_User({required this.name, required this.communityIds, this.avatarUrl});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String name;
  @override
  final List<String> communityIds;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'User(name: $name, communityIds: $communityIds, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
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
      {required String name,
      required List<String> communityIds,
      String? avatarUrl}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

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

Community _$CommunityFromJson(Map<String, dynamic> json) {
  return _Community.fromJson(json);
}

/// @nodoc
class _$CommunityTearOff {
  const _$CommunityTearOff();

  _Community call({required String name, String? backgroundUrl}) {
    return _Community(
      name: name,
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
  String get name => throw _privateConstructorUsedError;
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
  $Res call({String name, String? backgroundUrl});
}

/// @nodoc
class _$CommunityCopyWithImpl<$Res> implements $CommunityCopyWith<$Res> {
  _$CommunityCopyWithImpl(this._value, this._then);

  final Community _value;
  // ignore: unused_field
  final $Res Function(Community) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? backgroundUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
  $Res call({String name, String? backgroundUrl});
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
    Object? name = freezed,
    Object? backgroundUrl = freezed,
  }) {
    return _then(_Community(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
  _$_Community({required this.name, this.backgroundUrl});

  factory _$_Community.fromJson(Map<String, dynamic> json) =>
      _$_$_CommunityFromJson(json);

  @override
  final String name;
  @override
  final String? backgroundUrl;

  @override
  String toString() {
    return 'Community(name: $name, backgroundUrl: $backgroundUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Community &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.backgroundUrl, backgroundUrl) ||
                const DeepCollectionEquality()
                    .equals(other.backgroundUrl, backgroundUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
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
  factory _Community({required String name, String? backgroundUrl}) =
      _$_Community;

  factory _Community.fromJson(Map<String, dynamic> json) =
      _$_Community.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get backgroundUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommunityCopyWith<_Community> get copyWith =>
      throw _privateConstructorUsedError;
}

Event _$EventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
class _$EventTearOff {
  const _$EventTearOff();

  _Event call(
      {required String name,
      required String communityId,
      required EventCategory category,
      required String description,
      required String organizerId,
      required List<String> participantIds,
      String? backgroundUrl}) {
    return _Event(
      name: name,
      communityId: communityId,
      category: category,
      description: description,
      organizerId: organizerId,
      participantIds: participantIds,
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
  String get name => throw _privateConstructorUsedError;
  String get communityId => throw _privateConstructorUsedError;
  EventCategory get category => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get organizerId => throw _privateConstructorUsedError;
  List<String> get participantIds => throw _privateConstructorUsedError;
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
      {String name,
      String communityId,
      EventCategory category,
      String description,
      String organizerId,
      List<String> participantIds,
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
    Object? name = freezed,
    Object? communityId = freezed,
    Object? category = freezed,
    Object? description = freezed,
    Object? organizerId = freezed,
    Object? participantIds = freezed,
    Object? backgroundUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      participantIds: participantIds == freezed
          ? _value.participantIds
          : participantIds // ignore: cast_nullable_to_non_nullable
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
      {String name,
      String communityId,
      EventCategory category,
      String description,
      String organizerId,
      List<String> participantIds,
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
    Object? name = freezed,
    Object? communityId = freezed,
    Object? category = freezed,
    Object? description = freezed,
    Object? organizerId = freezed,
    Object? participantIds = freezed,
    Object? backgroundUrl = freezed,
  }) {
    return _then(_Event(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      participantIds: participantIds == freezed
          ? _value.participantIds
          : participantIds // ignore: cast_nullable_to_non_nullable
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
class _$_Event implements _Event {
  _$_Event(
      {required this.name,
      required this.communityId,
      required this.category,
      required this.description,
      required this.organizerId,
      required this.participantIds,
      this.backgroundUrl});

  factory _$_Event.fromJson(Map<String, dynamic> json) =>
      _$_$_EventFromJson(json);

  @override
  final String name;
  @override
  final String communityId;
  @override
  final EventCategory category;
  @override
  final String description;
  @override
  final String organizerId;
  @override
  final List<String> participantIds;
  @override
  final String? backgroundUrl;

  @override
  String toString() {
    return 'Event(name: $name, communityId: $communityId, category: $category, description: $description, organizerId: $organizerId, participantIds: $participantIds, backgroundUrl: $backgroundUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Event &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
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
            (identical(other.participantIds, participantIds) ||
                const DeepCollectionEquality()
                    .equals(other.participantIds, participantIds)) &&
            (identical(other.backgroundUrl, backgroundUrl) ||
                const DeepCollectionEquality()
                    .equals(other.backgroundUrl, backgroundUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(communityId) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(organizerId) ^
      const DeepCollectionEquality().hash(participantIds) ^
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

abstract class _Event implements Event {
  factory _Event(
      {required String name,
      required String communityId,
      required EventCategory category,
      required String description,
      required String organizerId,
      required List<String> participantIds,
      String? backgroundUrl}) = _$_Event;

  factory _Event.fromJson(Map<String, dynamic> json) = _$_Event.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get communityId => throw _privateConstructorUsedError;
  @override
  EventCategory get category => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get organizerId => throw _privateConstructorUsedError;
  @override
  List<String> get participantIds => throw _privateConstructorUsedError;
  @override
  String? get backgroundUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EventCopyWith<_Event> get copyWith => throw _privateConstructorUsedError;
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
