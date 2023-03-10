import 'package:equatable/equatable.dart';

class Employee extends Equatable {
  String employeeId;
  String employeeName;
  Employee(this.employeeId, this.employeeName);
  @override
  // TODO: implement props
  List<Object?> get props =>[employeeId];
}
