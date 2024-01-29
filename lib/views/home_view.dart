import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/api/ApiProvider.dart';
import 'package:movie_app/models/trending_model.dart';
import 'package:movie_app/widgets/upcomingmovies.dart';

import '../models/toprated_model.dart';
import '../models/upcoming_model.dart';
import '../utils/colors.dart';
import '../widgets/mostrated.dart';
import '../widgets/trending.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<trendingMovie>> trendingMovies;
  late Future<List<UpcomingMovies>> upComingMovies;
  late Future<List<TopRatedMovies>> topRatedMovies;

  @override
  void initState() {
    super.initState();
    trendingMovies = Api().getTrendingMovies();
    upComingMovies = Api().getUpcomigMovies();
    topRatedMovies = Api().getTopratedMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: Text('Netflix Clone'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Trending Now',
                  style: GoogleFonts.rocknRollOne(fontSize: 22),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: FutureBuilder(
                    future: trendingMovies,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text(snapshot.hasError.toString()),
                        );
                      } else if (snapshot.hasData) {
                        // final data = snapshot.hasData;
                        return trendingSlider(
                          snapshot: snapshot,
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Most rated movies',
                  style: GoogleFonts.rocknRollOne(fontSize: 22),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: FutureBuilder(
                    future: topRatedMovies,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text(snapshot.hasError.toString()),
                        );
                      } else if (snapshot.hasData) {
                        // final data = snapshot.hasData;
                        return mostRatedMovies(
                          snapshot: snapshot,
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Upcoming movies',
                  style: GoogleFonts.rocknRollOne(fontSize: 22),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: FutureBuilder(
                    future: upComingMovies,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text(snapshot.hasError.toString()),
                        );
                      } else if (snapshot.hasData) {
                        // final data = snapshot.hasData;
                        return upcomingMovies(
                          snapshot: snapshot,
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
