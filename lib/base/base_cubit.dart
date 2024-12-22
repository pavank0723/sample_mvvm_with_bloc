import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
export 'package:sample_mvvm_with_bloc/repository/repository.dart';
export 'package:sample_mvvm_with_bloc/models/models.dart';
export 'package:meta/meta.dart';
export 'package:sample_mvvm_with_bloc/local/session_manager.dart';
export 'package:sample_mvvm_with_bloc/utils/utils.dart';

class BaseCubit<T> extends Cubit<T>{
  var logger = Logger(
    filter: null, // Use the default LogFilter (-> only log in debug mode)
    printer: PrettyPrinter(), // Use the PrettyPrinter to format and print log
    output: null, // Use the default LogOutput (-> send everything to console)
  );

  M instanceOf<M>(BuildContext context){
    return RepositoryProvider.of<M>(context);
  }

  BaseCubit(super.initialState);

}