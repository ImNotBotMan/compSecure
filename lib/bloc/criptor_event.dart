part of 'criptor_bloc.dart';

@immutable
abstract class CriptorEvent {}

class CriptIt extends CriptorEvent {
  final String string;
  final int key;

  CriptIt(this.string, this.key);
}

class DecrtiptIT extends CriptorEvent {
  final String string;
  final int key;

  DecrtiptIT(this.string, this.key);
}
