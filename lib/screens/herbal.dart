import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Herbal extends StatefulWidget {
  final String? youtubeURL;
  const Herbal(this.youtubeURL);

  @override
  State<Herbal> createState() => _HerbalState();
}

class _HerbalState extends State<Herbal> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId:
            YoutubePlayerController.convertUrlToId(widget.youtubeURL!)!,
        params: const YoutubePlayerParams(
          loop: true,
          color: "transparent",
          desktopMode: true,
          strictRelatedVideos: true,
          showFullscreenButton: !kIsWeb,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: kIsWeb ? screenSize.height / 1.13 : screenSize.height,
      width: screenSize.width,
      child: YoutubePlayerControllerProvider(
        controller: _controller,
        child: YoutubePlayerIFrame(
          controller: _controller,
        ),
      ),
    );
  }
}
