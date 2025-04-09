part of 'library_bloc.dart';

@MappableClass()
class LibraryEvent with LibraryEventMappable {
  const LibraryEvent();
}

@MappableClass()
class LibraryStarted extends LibraryEvent {
  const LibraryStarted();
}

@MappableClass()
class LibraryRefresh extends LibraryEvent {
  const LibraryRefresh();
}
