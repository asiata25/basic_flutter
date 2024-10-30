import 'package:basic_flutter/core/constants/constants.dart';
import 'package:basic_flutter/core/theme/app_pallete.dart';
import 'package:basic_flutter/features/movies/domain/entities/movie_entity.dart';
import 'package:flutter/material.dart';

class ListFilm extends StatelessWidget {
  final String categoryTitle;
  final List<MovieEntity> films;

  const ListFilm({super.key, required this.categoryTitle, required this.films});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                categoryTitle,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: const Text("See All",
                    style: TextStyle(
                        color: AppPallete.mainColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12)),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [...films.map((e) => _filmItem(e))],
          ),
        )
      ],
    );
  }

  Widget _filmItem(MovieEntity dataMovie) {
    return Column(
      children: [
        Container(
          width: 120,
          height: 180,
          margin: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image:
                      NetworkImage("$movieImageUrl/${dataMovie.posterPath}"))),
        ),
        const SizedBox(
          height: 6,
        ),
        SizedBox(
          width: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dataMovie.title!,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
              ),
              Text(
                dataMovie.releaseDate!,
                style: const TextStyle(fontSize: 10, color: AppPallete.grey300),
              )
            ],
          ),
        )
      ],
    );
  }
}
