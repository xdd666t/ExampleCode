import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'screen_adapt_state.dart';

class ScreenAdaptCubit extends Cubit<ScreenAdaptState> {
  ScreenAdaptCubit() : super(ScreenAdaptInitial());
}
