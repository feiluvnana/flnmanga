// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'enum.dart';

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
      case r'author':
        return EntityType.author;
      case r'chapter':
        return EntityType.chapter;
      case r'manga':
        return EntityType.manga;
      case r'tag':
        return EntityType.tag;
      case r'cover_art':
        return EntityType.cover_art;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(EntityType self) {
    switch (self) {
      case EntityType.author:
        return r'author';
      case EntityType.chapter:
        return r'chapter';
      case EntityType.manga:
        return r'manga';
      case EntityType.tag:
        return r'tag';
      case EntityType.cover_art:
        return r'cover_art';
    }
  }
}

extension EntityTypeMapperExtension on EntityType {
  String toValue() {
    EntityTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<EntityType>(this) as String;
  }
}

class PublicationDemographicMapper extends EnumMapper<PublicationDemographic> {
  PublicationDemographicMapper._();

  static PublicationDemographicMapper? _instance;
  static PublicationDemographicMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PublicationDemographicMapper._());
    }
    return _instance!;
  }

  static PublicationDemographic fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  PublicationDemographic decode(dynamic value) {
    switch (value) {
      case r'shoujo':
        return PublicationDemographic.shoujo;
      case r'shounen':
        return PublicationDemographic.shounen;
      case r'seinen':
        return PublicationDemographic.seinen;
      case r'josei':
        return PublicationDemographic.josei;
      case r'none':
        return PublicationDemographic.none;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(PublicationDemographic self) {
    switch (self) {
      case PublicationDemographic.shoujo:
        return r'shoujo';
      case PublicationDemographic.shounen:
        return r'shounen';
      case PublicationDemographic.seinen:
        return r'seinen';
      case PublicationDemographic.josei:
        return r'josei';
      case PublicationDemographic.none:
        return r'none';
    }
  }
}

extension PublicationDemographicMapperExtension on PublicationDemographic {
  String toValue() {
    PublicationDemographicMapper.ensureInitialized();
    return MapperContainer.globals.toValue<PublicationDemographic>(this)
        as String;
  }
}

class StatusMapper extends EnumMapper<Status> {
  StatusMapper._();

  static StatusMapper? _instance;
  static StatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StatusMapper._());
    }
    return _instance!;
  }

  static Status fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Status decode(dynamic value) {
    switch (value) {
      case r'completed':
        return Status.completed;
      case r'ongoing':
        return Status.ongoing;
      case r'cancelled':
        return Status.cancelled;
      case r'hiatus':
        return Status.hiatus;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Status self) {
    switch (self) {
      case Status.completed:
        return r'completed';
      case Status.ongoing:
        return r'ongoing';
      case Status.cancelled:
        return r'cancelled';
      case Status.hiatus:
        return r'hiatus';
    }
  }
}

extension StatusMapperExtension on Status {
  String toValue() {
    StatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Status>(this) as String;
  }
}

class ContentRatingMapper extends EnumMapper<ContentRating> {
  ContentRatingMapper._();

  static ContentRatingMapper? _instance;
  static ContentRatingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ContentRatingMapper._());
    }
    return _instance!;
  }

  static ContentRating fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ContentRating decode(dynamic value) {
    switch (value) {
      case r'safe':
        return ContentRating.safe;
      case r'suggestive':
        return ContentRating.suggestive;
      case r'erotica':
        return ContentRating.erotica;
      case r'pornographic':
        return ContentRating.pornographic;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ContentRating self) {
    switch (self) {
      case ContentRating.safe:
        return r'safe';
      case ContentRating.suggestive:
        return r'suggestive';
      case ContentRating.erotica:
        return r'erotica';
      case ContentRating.pornographic:
        return r'pornographic';
    }
  }
}

extension ContentRatingMapperExtension on ContentRating {
  String toValue() {
    ContentRatingMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ContentRating>(this) as String;
  }
}

class StateMapper extends EnumMapper<State> {
  StateMapper._();

  static StateMapper? _instance;
  static StateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StateMapper._());
    }
    return _instance!;
  }

  static State fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  State decode(dynamic value) {
    switch (value) {
      case r'draft':
        return State.draft;
      case r'submitted':
        return State.submitted;
      case r'published':
        return State.published;
      case r'rejected':
        return State.rejected;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(State self) {
    switch (self) {
      case State.draft:
        return r'draft';
      case State.submitted:
        return r'submitted';
      case State.published:
        return r'published';
      case State.rejected:
        return r'rejected';
    }
  }
}

extension StateMapperExtension on State {
  String toValue() {
    StateMapper.ensureInitialized();
    return MapperContainer.globals.toValue<State>(this) as String;
  }
}

class OrderMapper extends EnumMapper<Order> {
  OrderMapper._();

  static OrderMapper? _instance;
  static OrderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrderMapper._());
    }
    return _instance!;
  }

  static Order fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Order decode(dynamic value) {
    switch (value) {
      case r'asc':
        return Order.asc;
      case r'desc':
        return Order.desc;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Order self) {
    switch (self) {
      case Order.asc:
        return r'asc';
      case Order.desc:
        return r'desc';
    }
  }
}

extension OrderMapperExtension on Order {
  String toValue() {
    OrderMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Order>(this) as String;
  }
}
