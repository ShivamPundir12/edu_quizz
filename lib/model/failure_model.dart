// ignore: import_of_legacy_library_into_null_safe
import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String message;

  const Failure({this.message = ''});

  @override
  List<Object> get props => [message];
}