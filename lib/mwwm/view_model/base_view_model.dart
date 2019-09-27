import 'package:flutter/material.dart';

///
/// Declares the states of the view model.
///
enum ViewState { Idle, Busy}

///
/// Each view model extends this baseviewmodel to have the base
/// functionality.
///
class BaseViewModel extends ChangeNotifier {
  bool mounted = true;
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void setState(ViewState viewState) {
    if(mounted){
    _state = viewState;
    notifyListeners();
    }
  }

  @override
  void dispose(){
    mounted = false;
    super.dispose();
  }
}