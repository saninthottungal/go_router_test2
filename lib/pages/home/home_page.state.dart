import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
part 'home_page.state.freezed.dart';

@freezed
class Note with _$Note {
  const factory Note({
    required String id,
    @Default('No Title') String title,
    @Default("...") String description,
  }) = _Note;

  factory Note.create({required String? title, required String? description}) {
    return Note(
      id: const Uuid().v4(),
      title: title ?? 'No title',
      description: description ?? '...',
    );
  }
}
