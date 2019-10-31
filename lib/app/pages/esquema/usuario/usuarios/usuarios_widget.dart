import 'package:flutter/material.dart';
import 'package:slidy_api_list_object/app/pages/esquema/usuario/model/usuario.dart';
import 'package:slidy_api_list_object/app/pages/esquema/usuario/usuario_module.dart';
import 'package:slidy_api_list_object/app/pages/esquema/usuario/usuarios/usuarios_bloc.dart';

class UsuariosWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UsuarioModule.to.bloc<UsuariosBloc>().getUsuarios();
    return StreamBuilder<List<Usuario>>(
        stream: UsuarioModule.to.bloc<UsuariosBloc>().saida,
        builder: (context, snapshot) {
          return Center(
            child: snapshot.hasData
                ? ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(snapshot.data[index].avatar,),
                          radius: 30,
                        ),
                        title: Text(
                            "${snapshot.data[index].firstName} ${snapshot.data[index].lastName}"),
                        subtitle: Text("${snapshot.data[index].email}"),
                      );
                    })
                : CircularProgressIndicator(),
          );
        });
  }
}
