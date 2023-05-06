import 'package:equatable/equatable.dart';

class CustomError extends Equatable {
  final String errMessege;
  const CustomError({
    this.errMessege = '',
  });

  @override
  List<Object> get props => [errMessege];

  @override
  String toString() => 'CustomError(errMessege: $errMessege)';
}
