import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';
import 'package:slidy_api_list_object/app/pages/esquema/usuario/model/usuario.dart';
import 'package:slidy_api_list_object/app/pages/esquema/usuario/usuario_repository.dart';

class UsuariosBloc extends BlocBase {

  UsuarioRepository repository = UsuarioRepository();

  BehaviorSubject<List<Usuario>> _controllerUsuarios = BehaviorSubject<List<Usuario>>();
  Observable<List<Usuario>> get saida => _controllerUsuarios.stream;
  Sink<List<Usuario>> get entrada => _controllerUsuarios.sink;

  getUsuarios() async {
    entrada.add(await repository.getUsuarios());
  }

  @override
  void dispose() {
    super.dispose();
  }
}
