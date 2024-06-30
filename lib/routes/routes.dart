import 'package:flutter/material.dart';
import 'package:go_route_test2/pages/home/home_page.dart';
import 'package:go_route_test2/pages/new_note/new_note_page.dart';
import 'package:go_router/go_router.dart';
part 'routes.g.dart';

@TypedGoRoute<HomePageRoute>(path: '/')
class HomePageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

@TypedGoRoute<NewNoteRoute>(path: '/new')
class NewNoteRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const NewNotePage();
  }
}
