import 'package:flutter_test/flutter_test.dart';

import 'package:slidy_api_list_object/app/pages/esquema/usuario/usuarios/usuarios_bloc.dart';

void main() {
  UsuariosBloc bloc;

  setUp(() {
    bloc = UsuariosBloc();
  });

  group('UsuariosBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<UsuariosBloc>());
    });
  });
}
