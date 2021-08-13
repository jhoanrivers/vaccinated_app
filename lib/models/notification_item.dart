

import 'package:equatable/equatable.dart';

class NotificationItem extends Equatable{

  final String id;
  final String title;
  final String message;
  final int createdDate;
  final bool deleted;

  NotificationItem({required this.id,required this.title,required this.message,required this.createdDate,required this.deleted});



  @override
  List<Object> get props => [id, title, message, createdDate, deleted];

}