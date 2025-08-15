part of 'counter_bloc.dart';

sealed class CounterEvent {}

final class CounterIncrementedEvent extends CounterEvent {}

final class CounterDecrementedEvent extends CounterEvent {}
