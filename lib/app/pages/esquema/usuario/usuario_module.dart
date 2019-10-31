import 'package:slidy_api_list_object/app/pages/esquema/usuario/usuarios/usuarios_bloc.dart';
import 'package:slidy_api_list_object/app/pages/esquema/usuario/usuario_repository.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:slidy_api_list_object/app/pages/esquema/usuario/usuarios/usuarios_widget.dart';

class UsuarioModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => UsuariosBloc()),
      ];

  @override
  List<Dependency> get dependencies => [
        Dependency((i) => UsuarioRepository()),
      ];

  @override
  Widget get view => UsuariosWidget();

  static Inject get to => Inject<UsuarioModule>.of();
}
