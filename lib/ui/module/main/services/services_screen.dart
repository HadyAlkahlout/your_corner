import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ServicesCubit(),
      child: BlocConsumer<ServicesCubit, ServicesStates>(
        listener: (context, state) {},
        builder: (context, state) {
          ServicesCubit cubit = ServicesCubit.get(context);
          return SingleChildScrollView(
            child: SizedBox(),
          );
        },
      ),
    );
  }
}
