// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ErrorResult _$_$_ErrorResultFromJson(Map<String, dynamic> json) {
  return _$_ErrorResult(
    message: json['message'] as String,
    status: json['status'] as String,
  );
}

Map<String, dynamic> _$_$_ErrorResultToJson(_$_ErrorResult instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
    };

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['id'] as String,
    name: json['name'] as String,
    communityIds: (json['community_ids'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    avatarUrl: json['avatar_url'] as String?,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'community_ids': instance.communityIds,
      'avatar_url': instance.avatarUrl,
    };

_$Users _$_$UsersFromJson(Map<String, dynamic> json) {
  return _$Users(
    users: (json['users'] as List<dynamic>)
        .map((e) => User.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$UsersToJson(_$Users instance) => <String, dynamic>{
      'users': instance.users.map((e) => e.toJson()).toList(),
    };

_$UsersError _$_$UsersErrorFromJson(Map<String, dynamic> json) {
  return _$UsersError(
    ErrorResult.fromJson(json['error'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$UsersErrorToJson(_$UsersError instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
    };

_$UsersLoading _$_$UsersLoadingFromJson(Map<String, dynamic> json) {
  return _$UsersLoading();
}

Map<String, dynamic> _$_$UsersLoadingToJson(_$UsersLoading instance) =>
    <String, dynamic>{};

_$_Community _$_$_CommunityFromJson(Map<String, dynamic> json) {
  return _$_Community(
    id: json['id'] as String,
    name: json['name'] as String,
    label: json['label'] as String,
    invitationCode: json['invitation_code'] as String,
    magicWord: json['magic_word'] as String,
    backgroundUrl: json['background_url'] as String?,
  );
}

Map<String, dynamic> _$_$_CommunityToJson(_$_Community instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'label': instance.label,
      'invitation_code': instance.invitationCode,
      'magic_word': instance.magicWord,
      'background_url': instance.backgroundUrl,
    };

_$Communities _$_$CommunitiesFromJson(Map<String, dynamic> json) {
  return _$Communities(
    communities: (json['communitiess'] as List<dynamic>)
        .map((e) => Community.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$CommunitiesToJson(_$Communities instance) =>
    <String, dynamic>{
      'communitiess': instance.communities.map((e) => e.toJson()).toList(),
    };

_$CommunitiesError _$_$CommunitiesErrorFromJson(Map<String, dynamic> json) {
  return _$CommunitiesError(
    ErrorResult.fromJson(json['error'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$CommunitiesErrorToJson(_$CommunitiesError instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
    };

_$CommunitiesLoading _$_$CommunitiesLoadingFromJson(Map<String, dynamic> json) {
  return _$CommunitiesLoading();
}

Map<String, dynamic> _$_$CommunitiesLoadingToJson(
        _$CommunitiesLoading instance) =>
    <String, dynamic>{};

_$_Event _$_$_EventFromJson(Map<String, dynamic> json) {
  return _$_Event(
    id: json['id'] as String,
    name: json['name'] as String,
    status: _$enumDecode(_$EventStatusEnumMap, json['status']),
    communityId: json['community_id'] as String,
    category: _$enumDecode(_$EventCategoryEnumMap, json['category']),
    description: json['description'] as String,
    organizerId: json['organizer_id'] as String,
    yesParticipantIds: (json['yes_participant_ids'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    maybeParticipantIds: (json['maybe_participant_ids'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    noParticipantIds: (json['no_participant_ids'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    backgroundUrl: json['background_url'] as String?,
  );
}

Map<String, dynamic> _$_$_EventToJson(_$_Event instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': _$EventStatusEnumMap[instance.status],
      'community_id': instance.communityId,
      'category': _$EventCategoryEnumMap[instance.category],
      'description': instance.description,
      'organizer_id': instance.organizerId,
      'yes_participant_ids': instance.yesParticipantIds,
      'maybe_participant_ids': instance.maybeParticipantIds,
      'no_participant_ids': instance.noParticipantIds,
      'background_url': instance.backgroundUrl,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$EventStatusEnumMap = {
  EventStatus.archived: 'archived',
  EventStatus.pending: 'pending',
  EventStatus.upcoming: 'upcoming',
  EventStatus.completed: 'completed',
};

const _$EventCategoryEnumMap = {
  EventCategory.hackathon: 'hackathon',
  EventCategory.hiking: 'hiking',
  EventCategory.bbq: 'bbq',
  EventCategory.gamenight: 'gamenight',
  EventCategory.lasertag: 'lasertag',
  EventCategory.escaperoom: 'escaperoom',
};

_$Events _$_$EventsFromJson(Map<String, dynamic> json) {
  return _$Events(
    events: (json['events'] as List<dynamic>)
        .map((e) => Event.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$EventsToJson(_$Events instance) => <String, dynamic>{
      'events': instance.events.map((e) => e.toJson()).toList(),
    };

_$EventsError _$_$EventsErrorFromJson(Map<String, dynamic> json) {
  return _$EventsError(
    ErrorResult.fromJson(json['error'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$EventsErrorToJson(_$EventsError instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
    };

_$EventsLoading _$_$EventsLoadingFromJson(Map<String, dynamic> json) {
  return _$EventsLoading();
}

Map<String, dynamic> _$_$EventsLoadingToJson(_$EventsLoading instance) =>
    <String, dynamic>{};

_$EventLocationSection _$_$EventLocationSectionFromJson(
    Map<String, dynamic> json) {
  return _$EventLocationSection(
    id: json['id'] as String,
    eventId: json['event_id'] as String,
    communityId: json['community_id'] as String,
    type: json['type'] as String,
    decision: _$enumDecode(_$EventDecisionEnumMap, json['decision']),
    title: json['title'] as String,
    subtitle: json['subtitle'] as String,
    yesParticipantIds: (json['yes_participant_ids'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    maybeParticipantIds: (json['maybe_participant_ids'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    noParticipantIds: (json['no_participant_ids'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$_$EventLocationSectionToJson(
        _$EventLocationSection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_id': instance.eventId,
      'community_id': instance.communityId,
      'type': instance.type,
      'decision': _$EventDecisionEnumMap[instance.decision],
      'title': instance.title,
      'subtitle': instance.subtitle,
      'yes_participant_ids': instance.yesParticipantIds,
      'maybe_participant_ids': instance.maybeParticipantIds,
      'no_participant_ids': instance.noParticipantIds,
    };

const _$EventDecisionEnumMap = {
  EventDecision.yes: 'yes',
  EventDecision.maybe: 'maybe',
  EventDecision.no: 'no',
};

_$EventTimeSection _$_$EventTimeSectionFromJson(Map<String, dynamic> json) {
  return _$EventTimeSection(
    id: json['id'] as String,
    eventId: json['event_id'] as String,
    communityId: json['community_id'] as String,
    type: json['type'] as String,
    decision: _$enumDecode(_$EventDecisionEnumMap, json['decision']),
    title: json['title'] as String,
    subtitle: json['subtitle'] as String,
    yesParticipantIds: (json['yes_participant_ids'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    maybeParticipantIds: (json['maybe_participant_ids'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    noParticipantIds: (json['no_participant_ids'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$_$EventTimeSectionToJson(_$EventTimeSection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_id': instance.eventId,
      'community_id': instance.communityId,
      'type': instance.type,
      'decision': _$EventDecisionEnumMap[instance.decision],
      'title': instance.title,
      'subtitle': instance.subtitle,
      'yes_participant_ids': instance.yesParticipantIds,
      'maybe_participant_ids': instance.maybeParticipantIds,
      'no_participant_ids': instance.noParticipantIds,
    };

_$EventLunchSection _$_$EventLunchSectionFromJson(Map<String, dynamic> json) {
  return _$EventLunchSection(
    id: json['id'] as String,
    eventId: json['event_id'] as String,
    communityId: json['community_id'] as String,
    type: json['type'] as String,
    decision: _$enumDecode(_$EventDecisionEnumMap, json['decision']),
    title: json['title'] as String,
    subtitle: json['subtitle'] as String,
    yesParticipantIds: (json['yes_participant_ids'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    maybeParticipantIds: (json['maybe_participant_ids'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    noParticipantIds: (json['no_participant_ids'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$_$EventLunchSectionToJson(
        _$EventLunchSection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_id': instance.eventId,
      'community_id': instance.communityId,
      'type': instance.type,
      'decision': _$EventDecisionEnumMap[instance.decision],
      'title': instance.title,
      'subtitle': instance.subtitle,
      'yes_participant_ids': instance.yesParticipantIds,
      'maybe_participant_ids': instance.maybeParticipantIds,
      'no_participant_ids': instance.noParticipantIds,
    };

_$EventDinnerSection _$_$EventDinnerSectionFromJson(Map<String, dynamic> json) {
  return _$EventDinnerSection(
    id: json['id'] as String,
    eventId: json['event_id'] as String,
    communityId: json['community_id'] as String,
    type: json['type'] as String,
    decision: _$enumDecode(_$EventDecisionEnumMap, json['decision']),
    title: json['title'] as String,
    subtitle: json['subtitle'] as String,
    yesParticipantIds: (json['yes_participant_ids'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    maybeParticipantIds: (json['maybe_participant_ids'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    noParticipantIds: (json['no_participant_ids'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$_$EventDinnerSectionToJson(
        _$EventDinnerSection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_id': instance.eventId,
      'community_id': instance.communityId,
      'type': instance.type,
      'decision': _$EventDecisionEnumMap[instance.decision],
      'title': instance.title,
      'subtitle': instance.subtitle,
      'yes_participant_ids': instance.yesParticipantIds,
      'maybe_participant_ids': instance.maybeParticipantIds,
      'no_participant_ids': instance.noParticipantIds,
    };

_$EventSectionItems _$_$EventSectionItemsFromJson(Map<String, dynamic> json) {
  return _$EventSectionItems(
    eventSectionItems: (json['eventSections'] as List<dynamic>)
        .map((e) => EventSectionItemUnion.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$EventSectionItemsToJson(
        _$EventSectionItems instance) =>
    <String, dynamic>{
      'eventSections':
          instance.eventSectionItems.map((e) => e.toJson()).toList(),
    };

_$EventSectionItemsError _$_$EventSectionItemsErrorFromJson(
    Map<String, dynamic> json) {
  return _$EventSectionItemsError(
    ErrorResult.fromJson(json['error'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$EventSectionItemsErrorToJson(
        _$EventSectionItemsError instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
    };

_$EventSectionItemsLoading _$_$EventSectionItemsLoadingFromJson(
    Map<String, dynamic> json) {
  return _$EventSectionItemsLoading();
}

Map<String, dynamic> _$_$EventSectionItemsLoadingToJson(
        _$EventSectionItemsLoading instance) =>
    <String, dynamic>{};
