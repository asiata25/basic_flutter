import 'package:basic_flutter/core/theme/app_theme.dart';
import 'package:basic_flutter/features/auth/presentation/bloc/remote/remote_auth_bloc.dart';
import 'package:basic_flutter/features/auth/presentation/pages/login_page.dart';
import 'package:basic_flutter/features/movies/presentation/bloc/remote/remote_movie_bloc.dart';
import 'package:basic_flutter/features/movies/presentation/bloc/remote/remote_movie_event.dart';
import 'package:basic_flutter/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setup();
  runApp(MultiBlocProvider(providers: [
    BlocProvider<RemoteMovieBloc>(
      create: (context) => locator()..add(const GetMovies()),
    ),
    BlocProvider(
      create: (context) => locator<RemoteAuthBloc>(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Movie',
      theme: AppTheme.defaultThemeMode,
      // home: LoginPage(),
      home: const LoginPage(),
    );
  }
}
