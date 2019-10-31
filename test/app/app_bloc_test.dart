import 'package:flutter_test/flutter_test.dart';

import 'package:slidy_api_list_object/app/app_bloc.dart';

void main() {
  AppBloc bloc;

  setUp(() {
    bloc = AppBloc();
  });

  group('AppBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<AppBloc>());
    });
  });
}
