import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/blocs/application_bloc/application_bloc.dart';

abstract class ApplicationStateBase<T extends StatefulWidget> extends State<T> {
  ApplicationBloc get applicationBloc => context.read<ApplicationBloc>();
}
