import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'survey_cubit_state.dart';

class SurveyCubitCubit extends Cubit<SurveyCubitState> {
  SurveyCubitCubit() : super(SurveyCubitInitial());
}
