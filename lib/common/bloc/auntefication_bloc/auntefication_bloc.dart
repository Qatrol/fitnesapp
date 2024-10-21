import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:qatfor/data/user_repo.dart';

part 'auntefication_event.dart';
part 'auntefication_state.dart';

class AunteficationBloc extends Bloc<AunteficationEvent, AunteficationState> {
  final UserRepository userRepository;
  late final StreamSubscription<User?> _userSubscription;

  AunteficationBloc({
    required this.userRepository,
  }) : super(const AunteficationState.unkown()) {
    _userSubscription = userRepository.user.listen((user) {
      add(AunteficationUserChanged(user));
    });
    on<AunteficationUserChanged>((event, emit) {
      if (event.user != null) {
        emit(AunteficationState.aunteficated(event.user!));
      } else {
        emit(const AunteficationState.unaunteficated());
      }
    });
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
