import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:dio/dio.dart';
import 'package:slidy_api_list_object/app/pages/esquema/usuario/model/usuario.dart';

class UsuarioRepository extends Disposable {

  final Dio dio = Dio();

  Future<List<Usuario>> getUsuarios() async {
    final response = await dio.get('https://reqres.in/api/users');
    return (response.data["data"] as List).map((data) => Usuario.fromJson(data)).toList();
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
