


import 'package:equatable/equatable.dart';
import 'package:vaccination_app/api/api_client.dart';

abstract class MainMenuState extends Equatable{


  @override
  List<Object> get props {
    return [];
  }
}


class InitializeMainMenu extends MainMenuState{}

class LoadingGetMainMenu extends MainMenuState{}

class SuccessFetchMainMenu extends MainMenuState{
  final List<Task> tasks;

  SuccessFetchMainMenu({required this.tasks});

}

class ErrorFetchMainMenu extends MainMenuState{}