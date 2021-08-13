

import 'package:equatable/equatable.dart';

class Corona extends Equatable {

  final String name;
  final String positif;
  final String sembuh;
  final String meninggal;
  final String dirawat;

  Corona({required this.name,required this.positif,required this.sembuh,required this.meninggal,required this.dirawat});


  @override
  List<Object?> get props => [];


  factory Corona.fromJson(Map<String, dynamic> json) {
    return Corona(
      name: json['name'],
      positif: json['positif'],
      sembuh: json['sembuh'],
      meninggal: json['meninggal'],
      dirawat: json['dirawat']
    );
  }


}