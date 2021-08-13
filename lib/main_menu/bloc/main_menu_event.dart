

import 'package:equatable/equatable.dart';

abstract class MainMenuEvent extends Equatable{


  @override
  List<Object?> get props => [];
}

class FetchAllInfo extends MainMenuEvent{}