part of 'tag_bloc.dart';

sealed class TagEvent {
  const TagEvent();
}

@MappableClass()
class TagFetched extends TagEvent with TagFetchedMappable {
  const TagFetched();
}
