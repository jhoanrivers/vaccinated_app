import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vaccination_app/main_menu/bloc/main_menu_bloc.dart';
import 'package:vaccination_app/main_menu/bloc/main_menu_state.dart';
import 'package:vaccination_app/main_menu/main_menu_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MainMenuBloc>(create: (BuildContext context) => MainMenuBloc(InitializeMainMenu()))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            actionsIconTheme: IconThemeData(
              color: Colors.black54
            )
          )
        ),
        home: VaccinationApp(),

      ),
    );
  }
}


class VaccinationApp extends StatefulWidget {
  const VaccinationApp({Key? key}) : super(key: key);

  @override
  _VaccinationAppState createState() => _VaccinationAppState();
}

class _VaccinationAppState extends State<VaccinationApp> {
  @override
  Widget build(BuildContext context) {
    return MainMenuScreen();
  }
}


