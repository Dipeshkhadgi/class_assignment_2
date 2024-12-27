import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/dashboard_cubit.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    final dashboardCubit = context.read<DashboardCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dipesh Class Assignment'),
        centerTitle: true,
      ),
      body: GridView(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        children: <Widget>[
          Card(
            child: InkWell(
              onTap: () => dashboardCubit.openSimpleInterestView(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(Icons.monetization_on, size: 48),
                  Text('Simple Interest'),
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () => dashboardCubit.openAreaOfCircleView(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(Icons.circle, size: 48),
                  Text('Area of Circle'),
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () => dashboardCubit.openProfileView(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  // Icon(Icons.person, size: 48),
                  Text('Factorial'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
