import 'package:slidy_api_list_object/app/pages/esquema/esquema/esquema_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:slidy_api_list_object/app/pages/esquema/esquema/esquema_page.dart';

class EsquemaModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => EsquemaBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => EsquemaPage();

  static Inject get to => Inject<EsquemaModule>.of();
}
