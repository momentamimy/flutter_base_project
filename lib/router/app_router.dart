import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
        ),
      ),
    ),
  ],
);
