import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_login/app_bloc.dart';
import 'package:flutter_firebase_login/home_page.dart';
import 'package:flutter_firebase_login/login_page.dart';
import 'package:flutter_firebase_login/repository.dart';

import 'app_status.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required AuthenticationRepository authenticationRepository,
  }) : _authenticationRepository = authenticationRepository;

  final AuthenticationRepository _authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authenticationRepository,
      child: BlocProvider(
        create: (_) => AppBloc(
          authenticationRepository: _authenticationRepository,
        ),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FlowBuilder<AppStatus>(
        state: context.select((AppBloc bloc) => bloc.state.status),
        onGeneratePages: (state, b) {
          final requiredPages = <Page>[];
          if (state == AppStatus.authenticated) {
            requiredPages.add(MaterialPage(child: HomePage()));
          } else {
            requiredPages.add(MaterialPage(child: LoginPage()));
          }
          return requiredPages;
        },
      ),
    );
  }
}
