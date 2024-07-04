import 'package:dog_adoption/feature/dog_detail_view/dog_detail_view.dart';
import 'package:dog_adoption/feature/favorite_view/favorite_view.dart';
import 'package:dog_adoption/feature/home_view/home_view.dart';
import 'package:dog_adoption/feature/login_view/login_view.dart';
import 'package:dog_adoption/feature/register_view/register_view.dart';
import 'package:flutter/material.dart';

enum RoutesEnum {
  login(name: "login", path: "/login", page: LoginView()),
  register(name: "register", path: "/register", page: RegisterView()),
  home(name: "home", path: "/home", page: HomeView()),
  dogDetail(name: "dogDetail", path: "/dogDetail", page: DogDetailView()),
  favorite(name: "favorite", path: "/favorite", page: FavoriteView());

  final String name;
  final String path;
  final Widget page;

  const RoutesEnum({
    required this.path,
    required this.page,
    required this.name,
  });
}
