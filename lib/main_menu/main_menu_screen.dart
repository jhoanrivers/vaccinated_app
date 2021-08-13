

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vaccination_app/main_menu/bloc/main_menu_bloc.dart';
import 'package:vaccination_app/main_menu/bloc/main_menu_event.dart';
import 'package:vaccination_app/main_menu/bloc/main_menu_state.dart';

class MainMenuScreen extends StatefulWidget {
  const MainMenuScreen({Key? key}) : super(key: key);

  @override
  _MainMenuScreenState createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {

  MainMenuBloc? mainMenuBloc;


  @override
  void initState() {
    super.initState();
    mainMenuBloc = BlocProvider.of<MainMenuBloc>(context)..add(FetchAllInfo());
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vaccination App'),
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
      ),
      body: BlocBuilder<MainMenuBloc, MainMenuState>(
        builder: (context, state){

          if(state is LoadingGetMainMenu){
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if(state is SuccessFetchMainMenu){
            return ListView.builder(
                itemBuilder: (context, index){
                  return ListTile(
                    title: Text(state.tasks[index].name.toString()),
                  );
                },
              itemCount: state.tasks.length,

            );
          }

          if(state is ErrorFetchMainMenu){
            return Center(
              child: Text('Failed load data'),
            );
          }
          return Center(child: Text('Hello World'),);
        },
      ),
    );
  }
}
