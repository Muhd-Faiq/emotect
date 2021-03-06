import 'package:emotect/user/user_viewmodel.dart';
import 'package:get_it/get_it.dart';

import '../services/rest.dart';

import '../services/auth/auth_service.dart';
import '../services/user/user_service.dart';
import '../services/emotions/emotions_service.dart';

// import '../services/auth/auth_service_rest.dart';
// import '../services/counter/counter_service_rest.dart';

import '../services/auth/auth_service_secured_rest.dart';
import '../services/user/user_service_rest.dart';
import '../services/emotions/emotions_service_rest.dart';

import '../services/emotionviewmodel.dart';
import '../services/listemotionviewmodel.dart';
import '../services/dataPieChartviewmodel.dart';
import '../services/session_service.dart';

// import '../services/auth/auth_service_mock.dart';
// import '../services/counter/counter_service_mock.dart';

GetIt dependency = GetIt.instance;

void init() {
  // Services

  dependency.registerLazySingleton<RestService>(
    () => RestService(
        // baseUrl: 'http://192.168.0.5:3000',  // with Local JSON-server
        // baseUrl: 'http://192.168.0.5:5001/mvvm-frontend-and-mvc-backend/us-central1/api', // Firebase emulator
        baseUrl: 'https://us-central1-emotect-bd3d5.cloudfunctions.net/api',
        enableSession: true // Firebase REST live
        ),
  );

  dependency.registerLazySingleton<AuthService>(() => AuthServiceSecuredRest());
  dependency.registerLazySingleton<UserService>(() => UserServiceRest());
  dependency
      .registerLazySingleton<EmotionsService>(() => EmotionsServiceRest());

  // dependency.registerLazySingleton<CounterService>(() => CounterServiceRest());
  // dependency.registerLazySingleton<AuthService>(() => AuthServiceRest());
  // dependency.registerLazySingleton<CounterService>(() => CounterServiceMock());
  // dependency.registerLazySingleton<AuthService>(() => AuthServiceMock());

  // Viewmodels
  dependency.registerLazySingleton(() => UserViewmodel());
  dependency.registerLazySingleton(() => EmotionsViewmodel());
  dependency.registerLazySingleton(() => ListEmotionsViewmodel());
  dependency.registerLazySingleton(() => DataPieChartViewmodel());
  dependency.registerLazySingleton(() => SessionService());
}
