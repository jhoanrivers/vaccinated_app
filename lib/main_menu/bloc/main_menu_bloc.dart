


import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vaccination_app/api/api_client.dart';
import 'package:vaccination_app/main_menu/bloc/main_menu_event.dart';
import 'package:vaccination_app/main_menu/bloc/main_menu_state.dart';

class MainMenuBloc extends Bloc<MainMenuEvent,MainMenuState>{
  MainMenuBloc(MainMenuState initialState) : super(initialState);


  @override
  Stream<MainMenuState> mapEventToState(MainMenuEvent event) async* {
    if(event is FetchAllInfo){
      yield LoadingGetMainMenu();

      try{
        final client = ApiClient(Dio(BaseOptions(contentType: "application/json")));
        List<Task> tasks = await client.getTasks();
        for(int i=0 ; i< tasks.length ;i++){
          print(tasks[i].name);
        }
        yield SuccessFetchMainMenu(tasks: tasks);
      } catch(exception){
        print(exception);
        yield ErrorFetchMainMenu();
      }

    }

  }

}