part of 'portfolio_bloc.dart';

abstract class PortfolioState extends Equatable {
  const PortfolioState();

  @override
  List<Object> get props => [];
}

class PortfolioInitial extends PortfolioState {}

class LaunchinglinkState extends PortfolioState {}

class LaunchedlinkState extends PortfolioState {}
