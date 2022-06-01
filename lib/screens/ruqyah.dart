import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Ruqyah extends StatefulWidget {
  final String? youtubeURL;
  const Ruqyah(this.youtubeURL);

  @override
  State<Ruqyah> createState() => _RuqyahState();
}

class _RuqyahState extends State<Ruqyah> {
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
