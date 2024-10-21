part of 'auntefication_bloc.dart';

enum AunteficationStatus { aunteficated, unaunteficated, unkown }

class AunteficationState extends Equatable {
  final AunteficationStatus status;
  final User? user;

  const AunteficationState._({
    this.status = AunteficationStatus.unkown,
    this.user,
  });

  const AunteficationState.unkown() : this._();

  const AunteficationState.aunteficated(User user)
      : this._(status: AunteficationStatus.aunteficated, user: user);

  const AunteficationState.unaunteficated()
      : this._(status: AunteficationStatus.unaunteficated);

  @override
  List<Object?> get props => [status, user];
}
