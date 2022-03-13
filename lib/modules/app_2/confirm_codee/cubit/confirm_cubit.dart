import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'confirm_states.dart';

class ConfirmCubit extends Cubit<ConfirmState>{
  ConfirmCubit(ConfirmState initialState) : super(initialState);
  String value ="";


  static ConfirmCubit get(context) => BlocProvider.of(context);


  void addValue({@required String txt }){
    value = value + txt;
    emit(AddCodeValueInitialState());
  }


  void dellValue(){
   value = value.substring(0,value.length -1);
    emit(DellCodeValueInitialState());
  }


  void clearValue(){
    value = '';
    emit(ClearCodeValueInitialState());
  }
}
