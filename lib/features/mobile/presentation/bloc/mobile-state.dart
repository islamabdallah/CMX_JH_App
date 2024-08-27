import 'package:journeyhazard/core/errors/custom_error.dart';
import 'package:journeyhazard/features/login/data/models/user.dart';

class BaseSendMobileState {}

class  SendMobileSuccessState extends BaseSendMobileState {
  UserModel userData;
   SendMobileSuccessState({this.userData});
}

class  SendMobileLoadingState extends BaseSendMobileState {}

class  SendMobileFailedState extends BaseSendMobileState {
  final CustomError error;
   SendMobileFailedState(this.error);
}

class  ChangeMobileSuccessState extends BaseSendMobileState {}

class GetCountriesSuccessState extends BaseSendMobileState {

  dynamic countries;

  GetCountriesSuccessState(this.countries);
}
class GetDestinationsSuccessState extends BaseSendMobileState {

  List<String> destinations;

  GetDestinationsSuccessState(this.destinations);
}