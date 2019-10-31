import 'package:flutter_test/flutter_test.dart';

import 'package:slidy_api_list_object/app/pages/esquema/esquema/esquema_bloc.dart';

void main() {
  EsquemaBloc bloc;

  setUp(() {
    bloc = EsquemaBloc();
  });

  group('EsquemaBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<EsquemaBloc>());
    });
  });
}
