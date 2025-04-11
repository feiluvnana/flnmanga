part of 'library_bloc.dart';

@MappableClass()
class LibraryState with LibraryStateMappable {
  final LibraryStatus status;
  final String? errorMessage;

  const LibraryState({required this.status, this.errorMessage});

  const LibraryState.initial() : status = LibraryStatus.initial, errorMessage = null;

  const LibraryState.loading() : status = LibraryStatus.loading, errorMessage = null;

  const LibraryState.loaded() : status = LibraryStatus.loaded, errorMessage = null;

  const LibraryState.error(String message) : status = LibraryStatus.error, errorMessage = message;
}
