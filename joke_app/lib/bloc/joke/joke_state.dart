part of 'joke_bloc.dart';

abstract class JokeState extends Equatable {
  const JokeState();

  @override
  List<Object?> get props => [];
}

class JokeLoadingState extends JokeState {
  @override
  List<Object?> get props => [];
}

class JokeLoadedState extends JokeState {
  const JokeLoadedState(this.joke);

  final JokeModel joke;

  @override
  List<Object?> get props => [];
}

class JokeErrorState extends JokeState {
  const JokeErrorState(this.error);

  final String error;
}
