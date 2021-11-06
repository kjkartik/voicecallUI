import 'package:agoravoicecall/core/app_configs/routes_generator.dart';
import 'package:agoravoicecall/core/cubit/voice_caller_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/core.dart';

import 'caller_home.dart';

class MaterialAppHome extends StatelessWidget {
  const MaterialAppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///Define all @required `bloc`, and `cubit`
    return BlocProvider<VoiceCallerCubit>(
      create: (context) => VoiceCallerCubit(),
      child: const MaterialApp(
        onGenerateRoute: RouteGenerator.generate,
        debugShowCheckedModeBanner: false,
        home: CallerHome(),
      ),
    );
  }
}
