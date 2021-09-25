// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    name: json['name'] as String,
    communityIds: (json['community_ids'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    avatarUrl: json['avatar_url'] as String?,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'name': instance.name,
      'community_ids': instance.communityIds,
      'avatar_url': instance.avatarUrl,
    };

_$_Community _$_$_CommunityFromJson(Map<String, dynamic> json) {
  return _$_Community(
    name: json['name'] as String,
    backgroundUrl: json['background_url'] as String?,
  );
}

Map<String, dynamic> _$_$_CommunityToJson(_$_Community instance) =>
    <String, dynamic>{
      'name': instance.name,
      'background_url': instance.backgroundUrl,
    };

_$_Event _$_$_EventFromJson(Map<String, dynamic> json) {
  return _$_Event(
    name: json['name'] as String,
    communityId: json['community_id'] as String,
    category: _$enumDecode(_$EventCategoryEnumMap, json['category']),
    description: json['description'] as String,
    organizerId: json['organizer_id'] as String,
    participantIds: (json['participant_ids'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    backgroundUrl: json['background_url'] as String?,
  );
}

Map<String, dynamic> _$_$_EventToJson(_$_Event instance) => <String, dynamic>{
      'name': instance.name,
      'community_id': instance.communityId,
      'category': _$EventCategoryEnumMap[instance.category],
      'description': instance.description,
      'organizer_id': instance.organizerId,
      'participant_ids': instance.participantIds,
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

const _$EventCategoryEnumMap = {
  EventCategory.hackathon: 'hackathon',
  EventCategory.hiking: 'hiking',
  EventCategory.bbq: 'bbq',
  EventCategory.gamenight: 'gamenight',
  EventCategory.lasertag: 'lasertag',
  EventCategory.escaperoom: 'escaperoom',
};

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
