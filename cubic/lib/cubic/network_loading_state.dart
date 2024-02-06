part of 'network_loading_cubit.dart';

@immutable
abstract class NetworkLoadingState {}

class NetworkLoadingInitial extends NetworkLoadingState {}

class NetworkSuccess extends NetworkLoadingState{
  final List<String> data;
  NetworkSuccess(this.data);
}

class NetworkFailure extends NetworkLoadingState{
  final String error;
  NetworkFailure(this.error);
}