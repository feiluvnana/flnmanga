// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'enums.dart';

class LegacyTypeMapper extends EnumMapper<LegacyType> {
  LegacyTypeMapper._();

  static LegacyTypeMapper? _instance;
  static LegacyTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LegacyTypeMapper._());
    }
    return _instance!;
  }

  static LegacyType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  LegacyType decode(dynamic value) {
    switch (value) {
      case r'manga':
        return LegacyType.manga;
      case r'chapter':
        return LegacyType.chapter;
      case r'tag':
        return LegacyType.tag;
      case r'group':
        return LegacyType.group;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(LegacyType self) {
    switch (self) {
      case LegacyType.manga:
        return r'manga';
      case LegacyType.chapter:
        return r'chapter';
      case LegacyType.tag:
        return r'tag';
      case LegacyType.group:
        return r'group';
    }
  }
}

extension LegacyTypeMapperExtension on LegacyType {
  String toValue() {
    LegacyTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<LegacyType>(this) as String;
  }
}

class EntityTypeMapper extends EnumMapper<EntityType> {
  EntityTypeMapper._();

  static EntityTypeMapper? _instance;
  static EntityTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EntityTypeMapper._());
    }
    return _instance!;
  }

  static EntityType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  EntityType decode(dynamic value) {
    switch (value) {
      case r'api_client':
        return EntityType.api_client;
      case r'author':
        return EntityType.author;
      case r'chapter':
        return EntityType.chapter;
      case r'cover_art':
        return EntityType.cover_art;
      case r'custom_list':
        return EntityType.custom_list;
      case r'mapping_id':
        return EntityType.mapping_id;
      case r'manga':
        return EntityType.manga;
      case r'manga_relation':
        return EntityType.manga_relation;
      case r'tag':
        return EntityType.tag;
      case r'scanlation_group':
        return EntityType.scanlation_group;
      case r'user':
        return EntityType.user;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(EntityType self) {
    switch (self) {
      case EntityType.api_client:
        return r'api_client';
      case EntityType.author:
        return r'author';
      case EntityType.chapter:
        return r'chapter';
      case EntityType.cover_art:
        return r'cover_art';
      case EntityType.custom_list:
        return r'custom_list';
      case EntityType.mapping_id:
        return r'mapping_id';
      case EntityType.manga:
        return r'manga';
      case EntityType.manga_relation:
        return r'manga_relation';
      case EntityType.tag:
        return r'tag';
      case EntityType.scanlation_group:
        return r'scanlation_group';
      case EntityType.user:
        return r'user';
    }
  }
}

extension EntityTypeMapperExtension on EntityType {
  String toValue() {
    EntityTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<EntityType>(this) as String;
  }
}

class RelationshipTypeMapper extends EnumMapper<RelationshipType> {
  RelationshipTypeMapper._();

  static RelationshipTypeMapper? _instance;
  static RelationshipTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RelationshipTypeMapper._());
    }
    return _instance!;
  }

  static RelationshipType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  RelationshipType decode(dynamic value) {
    switch (value) {
      case r'author':
        return RelationshipType.author;
      case r'cover_art':
        return RelationshipType.cover_art;
      case r'manga':
        return RelationshipType.manga;
      case r'tag':
        return RelationshipType.tag;
      case r'scanlation_group':
        return RelationshipType.scanlation_group;
      case r'user':
        return RelationshipType.user;
      case r'creator':
        return RelationshipType.creator;
      case r'artist':
        return RelationshipType.artist;
      case r'reason':
        return RelationshipType.reason;
      case r'leader':
        return RelationshipType.leader;
      case r'member':
        return RelationshipType.member;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(RelationshipType self) {
    switch (self) {
      case RelationshipType.author:
        return r'author';
      case RelationshipType.cover_art:
        return r'cover_art';
      case RelationshipType.manga:
        return r'manga';
      case RelationshipType.tag:
        return r'tag';
      case RelationshipType.scanlation_group:
        return r'scanlation_group';
      case RelationshipType.user:
        return r'user';
      case RelationshipType.creator:
        return r'creator';
      case RelationshipType.artist:
        return r'artist';
      case RelationshipType.reason:
        return r'reason';
      case RelationshipType.leader:
        return r'leader';
      case RelationshipType.member:
        return r'member';
    }
  }
}

extension RelationshipTypeMapperExtension on RelationshipType {
  String toValue() {
    RelationshipTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<RelationshipType>(this) as String;
  }
}

class ApiClientStateMapper extends EnumMapper<ApiClientState> {
  ApiClientStateMapper._();

  static ApiClientStateMapper? _instance;
  static ApiClientStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ApiClientStateMapper._());
    }
    return _instance!;
  }

  static ApiClientState fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ApiClientState decode(dynamic value) {
    switch (value) {
      case r'requested':
        return ApiClientState.requested;
      case r'approved':
        return ApiClientState.approved;
      case r'rejected':
        return ApiClientState.rejected;
      case r'autoapproved':
        return ApiClientState.autoapproved;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ApiClientState self) {
    switch (self) {
      case ApiClientState.requested:
        return r'requested';
      case ApiClientState.approved:
        return r'approved';
      case ApiClientState.rejected:
        return r'rejected';
      case ApiClientState.autoapproved:
        return r'autoapproved';
    }
  }
}

extension ApiClientStateMapperExtension on ApiClientState {
  String toValue() {
    ApiClientStateMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ApiClientState>(this) as String;
  }
}

class CustomListVisibilityMapper extends EnumMapper<CustomListVisibility> {
  CustomListVisibilityMapper._();

  static CustomListVisibilityMapper? _instance;
  static CustomListVisibilityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CustomListVisibilityMapper._());
    }
    return _instance!;
  }

  static CustomListVisibility fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  CustomListVisibility decode(dynamic value) {
    switch (value) {
      case r'public':
        return CustomListVisibility.public;
      case r'private':
        return CustomListVisibility.private;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(CustomListVisibility self) {
    switch (self) {
      case CustomListVisibility.public:
        return r'public';
      case CustomListVisibility.private:
        return r'private';
    }
  }
}

extension CustomListVisibilityMapperExtension on CustomListVisibility {
  String toValue() {
    CustomListVisibilityMapper.ensureInitialized();
    return MapperContainer.globals.toValue<CustomListVisibility>(this)
        as String;
  }
}

class MangaContentRatingMapper extends EnumMapper<MangaContentRating> {
  MangaContentRatingMapper._();

  static MangaContentRatingMapper? _instance;
  static MangaContentRatingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MangaContentRatingMapper._());
    }
    return _instance!;
  }

  static MangaContentRating fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  MangaContentRating decode(dynamic value) {
    switch (value) {
      case r'safe':
        return MangaContentRating.safe;
      case r'suggestive':
        return MangaContentRating.suggestive;
      case r'erotica':
        return MangaContentRating.erotica;
      case r'pornographic':
        return MangaContentRating.pornographic;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(MangaContentRating self) {
    switch (self) {
      case MangaContentRating.safe:
        return r'safe';
      case MangaContentRating.suggestive:
        return r'suggestive';
      case MangaContentRating.erotica:
        return r'erotica';
      case MangaContentRating.pornographic:
        return r'pornographic';
    }
  }
}

extension MangaContentRatingMapperExtension on MangaContentRating {
  String toValue() {
    MangaContentRatingMapper.ensureInitialized();
    return MapperContainer.globals.toValue<MangaContentRating>(this) as String;
  }
}

class MangaPublicationDemographicMapper
    extends EnumMapper<MangaPublicationDemographic> {
  MangaPublicationDemographicMapper._();

  static MangaPublicationDemographicMapper? _instance;
  static MangaPublicationDemographicMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = MangaPublicationDemographicMapper._());
    }
    return _instance!;
  }

  static MangaPublicationDemographic fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  MangaPublicationDemographic decode(dynamic value) {
    switch (value) {
      case r'shoujo':
        return MangaPublicationDemographic.shoujo;
      case r'shounen':
        return MangaPublicationDemographic.shounen;
      case r'seinen':
        return MangaPublicationDemographic.seinen;
      case r'josei':
        return MangaPublicationDemographic.josei;
      case r'none':
        return MangaPublicationDemographic.none;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(MangaPublicationDemographic self) {
    switch (self) {
      case MangaPublicationDemographic.shoujo:
        return r'shoujo';
      case MangaPublicationDemographic.shounen:
        return r'shounen';
      case MangaPublicationDemographic.seinen:
        return r'seinen';
      case MangaPublicationDemographic.josei:
        return r'josei';
      case MangaPublicationDemographic.none:
        return r'none';
    }
  }
}

extension MangaPublicationDemographicMapperExtension
    on MangaPublicationDemographic {
  String toValue() {
    MangaPublicationDemographicMapper.ensureInitialized();
    return MapperContainer.globals.toValue<MangaPublicationDemographic>(this)
        as String;
  }
}

class MangaStateMapper extends EnumMapper<MangaState> {
  MangaStateMapper._();

  static MangaStateMapper? _instance;
  static MangaStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MangaStateMapper._());
    }
    return _instance!;
  }

  static MangaState fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  MangaState decode(dynamic value) {
    switch (value) {
      case r'draft':
        return MangaState.draft;
      case r'submitted':
        return MangaState.submitted;
      case r'published':
        return MangaState.published;
      case r'rejected':
        return MangaState.rejected;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(MangaState self) {
    switch (self) {
      case MangaState.draft:
        return r'draft';
      case MangaState.submitted:
        return r'submitted';
      case MangaState.published:
        return r'published';
      case MangaState.rejected:
        return r'rejected';
    }
  }
}

extension MangaStateMapperExtension on MangaState {
  String toValue() {
    MangaStateMapper.ensureInitialized();
    return MapperContainer.globals.toValue<MangaState>(this) as String;
  }
}

class MangaStatusMapper extends EnumMapper<MangaStatus> {
  MangaStatusMapper._();

  static MangaStatusMapper? _instance;
  static MangaStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MangaStatusMapper._());
    }
    return _instance!;
  }

  static MangaStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  MangaStatus decode(dynamic value) {
    switch (value) {
      case r'completed':
        return MangaStatus.completed;
      case r'ongoing':
        return MangaStatus.ongoing;
      case r'cancelled':
        return MangaStatus.cancelled;
      case r'hiatus':
        return MangaStatus.hiatus;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(MangaStatus self) {
    switch (self) {
      case MangaStatus.completed:
        return r'completed';
      case MangaStatus.ongoing:
        return r'ongoing';
      case MangaStatus.cancelled:
        return r'cancelled';
      case MangaStatus.hiatus:
        return r'hiatus';
    }
  }
}

extension MangaStatusMapperExtension on MangaStatus {
  String toValue() {
    MangaStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<MangaStatus>(this) as String;
  }
}
