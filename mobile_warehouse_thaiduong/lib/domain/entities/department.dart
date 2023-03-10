import 'package:equatable/equatable.dart';

class Department extends Equatable {
  String name;
  Department(this.name);
  @override
  // TODO: implement props
  List<Object?> get props => [name];
}