part of 'auntefication_bloc.dart';

sealed class AunteficationEvent extends Equatable {
  const AunteficationEvent();

  @override
  List<Object> get props => [];
}

class AunteficationUserChanged extends AunteficationEvent {
  final User? user;

  const AunteficationUserChanged(this.user);
}
