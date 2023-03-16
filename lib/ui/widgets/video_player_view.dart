import 'package:bt_c4/configs/app_configs.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerView extends StatefulWidget {
  const VideoPlayerView({Key? key}) : super(key: key);

  @override
  State<VideoPlayerView> createState() => _VideoPlayerViewState();
}

class _VideoPlayerViewState extends State<VideoPlayerView> {
  late VideoPlayerController _videoPlayerController;
  bool isPlay = false;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(AppConfigs.videoURL);
    _videoPlayerController
      ..addListener(() {
        setState(() {});
      })
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              isPlay
                  ? _videoPlayerController.pause()
                  : _videoPlayerController.play();
              setState(() {
                isPlay = !isPlay;
              });
            },
            child: SizedBox(
              width: 400,
              height: 300,
              child: VideoPlayer(_videoPlayerController),
            ),
          ),
          const SizedBox(height: 12),
          VideoProgressIndicator(
            _videoPlayerController,
            allowScrubbing: true,
            colors: const VideoProgressColors(
              backgroundColor: Colors.red,
              bufferedColor: Colors.yellow,
              playedColor: Colors.green,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
  }
}
