// import 'dart:async';
// import 'dart:developer';

// import 'package:bloc/bloc.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:survey_app/survey/cubit/survey/survey_cubit_cubit.dart';
// import 'package:survey_app/survey/data/survey_repo_impl.dart';
// import 'package:survey_app/survey/data/survey_repository.dart';

// class AppBlocObserver extends BlocObserver {
//   @override
//   void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
//     super.onChange(bloc, change);
//     log('onChange(${bloc.runtimeType}, $change)');
//   }

//   @override
//   void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
//     log('onError(${bloc.runtimeType}, $error, $stackTrace)');
//     super.onError(bloc, error, stackTrace);
//   }
// }

// Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
//   FlutterError.onError = (details) {
//     log(details.exceptionAsString(), stackTrace: details.stack);
//   };

//   await runZonedGuarded(
//     () async {
//       await BlocOverrides.runZoned(
//         () async => runApp(BlocProvider<SurveyCubitCubit>(
//             create: (_) =>SurveyCubitCubit(SurveyRepoImpl()), 
//             child: await builder()),),
//         blocObserver: AppBlocObserver(),
//       );
//     },
//     (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
//   );
// }
