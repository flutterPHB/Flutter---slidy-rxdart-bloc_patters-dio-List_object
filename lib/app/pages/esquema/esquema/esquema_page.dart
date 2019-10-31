import 'package:flutter/material.dart';
import 'package:slidy_api_list_object/app/pages/esquema/esquema_module.dart';
import 'package:slidy_api_list_object/app/pages/esquema/home/home_module.dart';
import 'package:slidy_api_list_object/app/pages/esquema/usuario/usuario_module.dart';

import 'esquema_bloc.dart';

class EsquemaPage extends StatefulWidget {
  @override
  _EsquemaPageState createState() => _EsquemaPageState();
}

class _EsquemaPageState extends State<EsquemaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: StreamBuilder<String>(
              initialData: "",
              stream: EsquemaModule.to.bloc<EsquemaBloc>().saida,
              builder: (context, snapshot) {
                return Text("${snapshot.data}");
              }),
        ),
        drawer: SafeArea(
          child: Drawer(
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 120,
                      color: Color(0xff035698),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Expanded(
                      child: StreamBuilder<String>(
                          stream: EsquemaModule.to.bloc<EsquemaBloc>().saida,
                          builder: (context, snapshot) {
                            return ListView(
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.home),
                                  title: Text("Home"),
                                  selected:
                                      snapshot.data == "Home" ? true : false,
                                  onTap: () {
                                    EsquemaModule.to
                                        .bloc<EsquemaBloc>()
                                        .opcMenu("Home");
                                    Navigator.pop(context);
                                  },
                                ),
                                Divider(),
                                ListTile(
                                  leading: Icon(Icons.supervisor_account),
                                  title: Text("Usuários"),
                                  selected: snapshot.data == "Usuários"
                                      ? true
                                      : false,
                                  onTap: () {
                                    EsquemaModule.to
                                        .bloc<EsquemaBloc>()
                                        .opcMenu("Usuários");
                                    Navigator.pop(context);
                                  },
                                ),
                                Divider(),
                              ],
                            );
                          }),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 65,
                    ),
                    Center(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://styles.redditmedia.com/t5_30y64/styles/communityIcon_vhy283ynsnq01.png"),
                        maxRadius: 55,
                        backgroundColor: Colors.black26,
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        "Flutter",
                        style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        body: StreamBuilder(
            stream: EsquemaModule.to.bloc<EsquemaBloc>().saida,
            builder: (context, snapshot) {
              return _body(snapshot.data);
            }));
  }

  _body(opc) {
    switch(opc){
      case "Home":
        return HomeModule();
        break;
      case "Usuários":
        return UsuarioModule();
        break;
      default:
        return HomeModule();
        break;
    }
  }
}
