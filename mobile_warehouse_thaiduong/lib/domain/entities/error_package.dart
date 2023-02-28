import 'package:equatable/equatable.dart';

class ErrorPackage extends Equatable {
  String detail;
  ErrorPackage(this.detail);
  
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
