import 'package:flutter/material.dart';

class MovieListWithBuilder extends StatelessWidget {
  const MovieListWithBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> movieNames = [
      'Avengers: Endgame',
      'Avengers: Age of Ultron',
      'Spider - Man: No Way Home',
      'Avengers: Infinity War',
      'Doctor Strange in the Multiverse of Madness',
      'Shang-Chi and the Legend of the Ten Rings',
      'Eternals'
    ];
    List<String> genres = [
      'Action, Adventure, Sci-Fi',
      'Action, Adventure, Sci-Fi',
      'Action, Sci-Fi',
      'Action, Adventure, Sci-Fi',
      'Action, Adventure, Fantasy',
      'Action, Adventure, Fantasy',
      'Action, Adventure, Fantasy',
    ];
    List<String> posterURLs = [
      'https://xl.movieposterdb.com/20_05/2019/4154796/xl_4154796_2542f70b.jpg?v=2022-10-29%2014:47:32',
      'https://xl.movieposterdb.com/15_02/2015/2395427/xl_2395427_2037d14e.jpg?v=2022-10-24%2010:53:03',
      'https://xl.movieposterdb.com/21_12/2021/10872600/xl_10872600_c809b67f.jpg?v=2022-10-24%2019:28:57',
      'https://xl.movieposterdb.com/21_01/2018/4154756/xl_4154756_7f5f2edf.jpg?v=2022-08-23%2001:43:40',
      'https://theposterdb.com/api/assets/212899/view',
      'https://theposterdb.com/api/assets/157523/view',
      'https://theposterdb.com/api/assets/153777/view'
    ];
    List<String> releaseYears = [
      '2019',
      '2015',
      '2021',
      '2018',
      '2022',
      '2021',
      '2021'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: ListView.builder(
          itemCount: movieNames.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                contentPadding: const EdgeInsets.all(12),
                leading: Image.network(
                  posterURLs[index],
                ),
                title: Text(
                  movieNames[index],
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  genres[index],
                  style: const TextStyle(fontSize: 12),
                ),
                trailing: Text(
                  releaseYears[index],
                  style: const TextStyle(fontSize: 13),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
