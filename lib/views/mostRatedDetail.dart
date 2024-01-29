import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/models/toprated_model.dart';

import '../utils/colors.dart';
import '../utils/constants.dart';

class MostRatedScreen extends StatelessWidget {
  const MostRatedScreen({super.key, 
  required this.movies});


  final TopRatedMovies movies;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    child: Container(
                      height: size.height * .6,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Image.network(
                        '${Constants.imagePath}${movies.posterPath}',
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.chevron_left,
                          color: white,
                          size: 30,
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Movie Name: ${movies.title}',
                      style: GoogleFonts.rocknRollOne(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Overview: ${movies.overview}',
                      style: GoogleFonts.rocknRollOne(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Release Date: ${movies.releaseDate}',
                      style: GoogleFonts.rocknRollOne(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    // Text(
                    //   'Total votes: ${movies.voteCount}',
                    //   style: GoogleFonts.rocknRollOne(fontSize: 16),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}