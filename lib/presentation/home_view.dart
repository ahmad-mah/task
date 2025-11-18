import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_view_body.dart';
import 'providers/home_provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeProvider>().fetchHomeData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: HomeViewBody()));
  }
}
