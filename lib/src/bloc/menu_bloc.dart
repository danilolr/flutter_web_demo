import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

class MenuBloc extends BlocBase {
  BehaviorSubject<int> _bsOpcaoMenu = BehaviorSubject<int>.seeded(0);
  Stream<int> get streamMenu => _bsOpcaoMenu.stream;
  Sink<int> get _sinkMenu => _bsOpcaoMenu.sink;

  alteraOpcaoMenu(int codigo) {
    _sinkMenu.add(codigo);
  }
}
