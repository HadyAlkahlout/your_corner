import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OffersCubit(),
      child: BlocConsumer<OffersCubit, OffersStates>(
        listener: (context, state) {},
        builder: (context, state) {
          OffersCubit cubit = OffersCubit.get(context);
          return SingleChildScrollView(
            child: SizedBox(),
          );
        },
      ),
    );
  }
}
