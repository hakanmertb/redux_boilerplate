import 'package:njktest2/app/features/shared/models/event/routerDataStore/ActivePathChangedActionPayload.dart';
import 'package:njktest2/app/features/shared/models/event/routerDataStore/NavigateActionPayload.dart';
import 'package:njktest2/app/features/shared/models/event/routerDataStore/SetParamsActionPayload.dart';
import 'package:njktest2/app/features/shared/models/event/routerDataStore/SetQueryParamsActionPayload.dart';

class ActivePathChanged {
  final ActivePathChangedActionPayload payload;
  ActivePathChanged(Map<String, dynamic> payload)
      : payload = ActivePathChangedActionPayload(payload);
}

class SetQueryParams {
  final SetQueryParamsActionPayload payload;
  SetQueryParams(Map<String, dynamic> payload)
      : payload = SetQueryParamsActionPayload(payload);
}

class SetParams {
  final SetParamsActionPayload payload;
  SetParams(Map<String, dynamic> payload)
      : payload = SetParamsActionPayload(payload);
}

class Navigate {
  final NavigateActionPayload payload;
  Navigate(Map<String, dynamic> payload)
      : payload = NavigateActionPayload(payload);
}
