class SpotVideoDetailArgs {
  const SpotVideoDetailArgs({
    required this.spotName,
    required this.videos,
    this.initialIndex = 0,
  });

  final String spotName;
  final List<SpotVideoDetailItem> videos;
  final int initialIndex;
}

class SpotVideoDetailItem {
  const SpotVideoDetailItem({
    required this.videoId,
    required this.title,
    required this.videoUrl,
  });

  final int videoId;
  final String title;
  final String videoUrl;
}
