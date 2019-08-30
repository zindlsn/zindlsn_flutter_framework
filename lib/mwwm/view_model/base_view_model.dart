import 'package:flutter/material.dart';

/**
 * Declares the states of the view model.
 */
enum ViewState { Idle, Busy}

/**
 * Each view model extends this baseviewmodel to have the base
 * functionality.
 */
class BaseViewModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }
}