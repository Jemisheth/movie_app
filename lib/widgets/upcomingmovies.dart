import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../views/upcomingDetails.dart';

class upcomingMovies extends StatelessWidget {
  const upcomingMovies({
    super.key,
    required this.snapshot,
  });

  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          // physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (BuildContext context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UpomingMovieDetail(
                      upcomingMovies: snapshot.data[index],
                    ),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: SizedBox(
                    height: 300,
                    width: 200,
                    child: Image.network(
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                      '${Constants.imagePath}${snapshot.data[index].posterPath}',
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
