part of 'color_cubit.dart';

sealed class ColorState extends Equatable {
  final Color color;
  const ColorState(this.color);

  @override
  List<Object> get props => [color];
}

class ColorInitial extends ColorState {
  const ColorInitial():super(Colors.green);
}

class ColorDownloaded extends ColorState{
  final Color newColor;
  const ColorDownloaded(this.newColor):super(newColor);
}

class ColorNetWorkFetching extends ColorState{
  const ColorNetWorkFetching():super(Colors.blue);
}

