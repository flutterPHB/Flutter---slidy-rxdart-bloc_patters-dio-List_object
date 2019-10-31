import 'package:slidy_api_list_object/app/pages/esquema/home/home/home_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:slidy_api_list_object/app/pages/esquema/home/home/home_widget.dart';

class HomeModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => HomeBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => HomeWidget();

  static Inject get to => Inject<HomeModule>.of();
}
