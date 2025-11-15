import 'package:get_it/get_it.dart';
import 'package:flutter_practice9/features/service_history/state/service_history_state.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerSingleton<ServiceHistoryState>(ServiceHistoryState());
}
