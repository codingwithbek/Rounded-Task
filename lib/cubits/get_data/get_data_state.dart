part of 'get_data_cubit.dart';

class GetDataState extends Equatable {
   GetDataState({
    this.currencyData,
    this.errorText = '',
    this.status = FormzStatus.pure,
    this.isInternet = 'OFFLINE',
  });

   TopLevelModel? currencyData;
  final String errorText;
  late final FormzStatus status;
  final String isInternet;

  GetDataState copyWith(
          {TopLevelModel? currencyData,
          String? errorText,
          FormzStatus? status,
          String? isInternet}) =>
      GetDataState(
        currencyData: currencyData ?? this.currencyData,
        errorText: errorText ?? this.errorText,
        status: status ?? this.status,
        isInternet: isInternet ?? this.isInternet,
      );

  @override
  List<Object> get props => [
        status,
        errorText,
      ];
}
