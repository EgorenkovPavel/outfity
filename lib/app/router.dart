import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:outfity/ui/cloth_detail_page/cloth_detail_bloc.dart';
import 'package:outfity/ui/cloth_detail_page/cloth_detail_page.dart';
import 'package:outfity/ui/home_page/home_page.dart';

import '../core/injection.dart';
import '../ui/home_page/home_bloc.dart';

final appRouter = GoRouter(
  initialLocation: '/clothes',
  routes: [
    GoRoute(
      path: '/clothes',
      builder: (context, state) {
        return BlocProvider(
          create: (_) => getIt<HomeBloc>()..add(const HomeEvent.fetch()),
          child: const HomePage(),
        );
      },
      routes: [
        GoRoute(
          path: ':id',
          builder: (context, state) {
            final id = int.parse(state.pathParameters['id']!);

            return BlocProvider(
              create: (_) =>
                  getIt<ClothDetailBloc>()
                    ..add(ClothDetailEvent.fetch(clothId: id)),
              child: const ClothDetailPage(),
            );
          },
        ),
      ],
    ),
    GoRoute(
      path: '/add',
      builder: (context, state) {
        return BlocProvider(
          create: (_) =>
              getIt<ClothDetailBloc>()..add(const ClothDetailEvent.fetch()),
          child: const ClothDetailPage(),
        );
      },
    ),
  ],
);
