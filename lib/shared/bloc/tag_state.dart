part of 'tag_bloc.dart';

enum TagStatus { loading, data, error }

@MappableClass()
class TagState with TagStateMappable {
  final TagStatus status;
  final List<mgd.Tag> tags;

  const TagState({required this.status, required this.tags});
}
