import 'package:flutter/material.dart';
import 'package:go_route_test2/pages/home/home_page.dart';
import 'package:go_route_test2/pages/home/home_page.state.dart';
import 'package:go_route_test2/pages/new_note/new_note_page.dart';
import 'package:go_route_test2/pages/note_view/note_view_page.dart';
import 'package:go_router/go_router.dart';
part 'routes.g.dart';

@TypedGoRoute<HomePageRoute>(path: '/')
class HomePageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

@TypedGoRoute<NoteViewRoute>(path: '/note_view')
class NoteViewRoute extends GoRouteData {
  NoteViewRoute({required this.$extra});
  final Note $extra;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return NoteViewPage(note: $extra);
  }
}

@TypedGoRoute<NewNoteRoute>(path: '/new')
class NewNoteRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const NewNotePage();
  }
}
