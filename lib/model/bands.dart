class Album {
  String name, imageAsset, year;

  Album({
    required this.name,
    required this.imageAsset,
    required this.year
  });
}

class Band {
  String name, country, imageAsset, date, detail, genres;
  List<Album> albums;

  Band({
    required this.name,
    required this.country,
    required this.imageAsset,
    required this.date,
    required this.detail,
    required this.genres,
    required this.albums
  });
}