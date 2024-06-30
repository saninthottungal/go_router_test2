import 'package:go_route_test2/pages/home/home_page.state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'home_page.logic.g.dart';

@riverpod
class Notes extends _$Notes {
  @override
  List<Note> build() {
    return [];
  }

  void addNote(Note note) {
    state = [...state, note];
  }
}
