class MusicModel {
  final List<Track> data;

  MusicModel({required this.data});

  factory MusicModel.fromJson(Map<String, dynamic> json) {
    return MusicModel(
      data: List<Track>.from(json['data'].map((track) => Track.fromJson(track))),
    );
  }
}

class Track {
  final int id;
  final bool readable;
  final String title;
  final String titleShort;
  final String titleVersion;
  final String link;
  final int duration;
  final int rank;
  final bool explicitLyrics;
  final int explicitContentLyrics;
  final int explicitContentCover;
  final String preview;
  final String md5Image;
  final Artist artist;
  final Album album;
  final String type;

  Track({
    required this.id,
    required this.readable,
    required this.title,
    required this.titleShort,
    required this.titleVersion,
    required this.link,
    required this.duration,
    required this.rank,
    required this.explicitLyrics,
    required this.explicitContentLyrics,
    required this.explicitContentCover,
    required this.preview,
    required this.md5Image,
    required this.artist,
    required this.album,
    required this.type,
  });

  factory Track.fromJson(Map<String, dynamic> json) {
    return Track(
      id: json['id'],
      readable: json['readable'],
      title: json['title'],
      titleShort: json['title_short'],
      titleVersion: json['title_version'],
      link: json['link'],
      duration: json['duration'],
      rank: json['rank'],
      explicitLyrics: json['explicit_lyrics'],
      explicitContentLyrics: json['explicit_content_lyrics'],
      explicitContentCover: json['explicit_content_cover'],
      preview: json['preview'],
      md5Image: json['md5_image'],
      artist: Artist.fromJson(json['artist']),
      album: Album.fromJson(json['album']),
      type: json['type'],
    );
  }
}

class Artist {
  final int id;
  final String name;
  final String link;
  final String picture;
  final String pictureSmall;
  final String pictureMedium;
  final String pictureBig;
  final String pictureXl;
  final String tracklist;
  final String type;

  Artist({
    required this.id,
    required this.name,
    required this.link,
    required this.picture,
    required this.pictureSmall,
    required this.pictureMedium,
    required this.pictureBig,
    required this.pictureXl,
    required this.tracklist,
    required this.type,
  });

  factory Artist.fromJson(Map<String, dynamic> json) {
    return Artist(
      id: json['id'],
      name: json['name'],
      link: json['link'],
      picture: json['picture'],
      pictureSmall: json['picture_small'],
      pictureMedium: json['picture_medium'],
      pictureBig: json['picture_big'],
      pictureXl: json['picture_xl'],
      tracklist: json['tracklist'],
      type: json['type'],
    );
  }
}

class Album {
  final int id;
  final String title;
  final String cover;
  final String coverSmall;
  final String coverMedium;
  final String coverBig;
  final String coverXl;
  final String md5Image;
  final String tracklist;
  final String type;

  Album({
    required this.id,
    required this.title,
    required this.cover,
    required this.coverSmall,
    required this.coverMedium,
    required this.coverBig,
    required this.coverXl,
    required this.md5Image,
    required this.tracklist,
    required this.type,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      id: json['id'],
      title: json['title'],
      cover: json['cover'],
      coverSmall: json['cover_small'],
      coverMedium: json['cover_medium'],
      coverBig: json['cover_big'],
      coverXl: json['cover_xl'],
      md5Image: json['md5_image'],
      tracklist: json['tracklist'],
      type: json['type'],
    );
  }
}
