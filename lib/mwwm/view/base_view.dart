import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zindlsn_flutter_framework/mwwm/registry/locator.dart';
///
/// It defines the baseview. Each stateful widget/ view extends
/// this base view.
///
class BaseView<T extends ChangeNotifier> extends StatefulWidget {
  final Widget Function(BuildContext context, T value, Widget child) builder;
  final Function(T) onModelReady;

  BaseView({@required this.builder, this.onModelReady});

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

///
/// Defines the base state.
///
class _BaseViewState<T extends ChangeNotifier> extends State<BaseView<T>> {
  T model = appRegistry<T>();

  @override
  void initState() {
    if (widget.onModelReady != null) {
      widget.onModelReady(model);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      builder: (context) => model,
      child: Consumer<T>(builder: widget.builder),
    );
  }
}