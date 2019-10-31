import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

class EsquemaBloc extends BlocBase {

  final BehaviorSubject<String> _controllerMenu = BehaviorSubject<String>.seeded("Home");
  Observable<String> get saida => _controllerMenu.stream;
  Sink<String> get entrada => _controllerMenu.sink;

  opcMenu(opc){
    entrada.add(opc);
  }

  @override
  void dispose() {
    _controllerMenu.close();
    super.dispose();
  }
}
