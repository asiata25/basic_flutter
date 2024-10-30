import 'package:basic_flutter/core/theme/app_pallete.dart';
import 'package:basic_flutter/features/movies/presentation/bloc/remote/remote_movie_bloc.dart';
import 'package:basic_flutter/features/movies/presentation/bloc/remote/remote_movie_state.dart';
import 'package:basic_flutter/features/movies/presentation/widgets/banner_carousel.dart';
import 'package:basic_flutter/features/movies/presentation/widgets/home_app_bar.dart';
import 'package:basic_flutter/features/movies/presentation/widgets/list_film.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const HomePage(),
      );
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              padding: const EdgeInsets.only(top: 16, bottom: 30),
              child: BlocBuilder<RemoteMovieBloc, RemoteMovieState>(
                builder: (context, state) {
                  // FIXME: How to return a widget base on state Bloc
                  Widget upcomingList = const CircularProgressIndicator(
                    backgroundColor: AppPallete.grey100,
                    strokeWidth: 2,
                  );

                  if (state is RemoteMovieDone) {
                    upcomingList = ListFilm(
                        categoryTitle: "Upcoming Movies", films: state.movies!);
                  }

                  if (state is RemoteMovieError) {
                    upcomingList = const Icon(Icons.refresh);
                  }

                  return Column(children: [
                    const HomeAppBar(),
                    const SizedBox(
                      height: 24,
                    ),
                    const BannerCarousel(),
                    const SizedBox(
                      height: 24,
                    ),
                    upcomingList,
                    const SizedBox(
                      height: 24,
                    ),
                    upcomingList
                  ]);
                },
              ))),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.download), label: "Download"),
        ],
      ),
    );
  }
}
