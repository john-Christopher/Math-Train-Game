import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';


void main() => runApp(const BgMusic());

class BgMusic extends StatefulWidget {
  const BgMusic({super.key});

  @override
  State<BgMusic> createState() => _BgMusicState();
}

class _BgMusicState extends State<BgMusic> {


  // late AssetsAudioPlayer _assetsAudioPlayer;
  // final audios = <Audio>[
  //   Audio(
  //     'assets/audio/bgmusic.mp3',
  //     metas: Metas(
  //       id: 'Background Music',
  //     ),
  //   ),
  // ];

  @override
  void initState() {
    super.initState();
    AssetsAudioPlayer.newPlayer().open(
      Audio(
        'assets/audio/bgmusic.mp3'
      ),
      autoStart: true,
      loopMode: LoopMode.single,
    );
  }


  @override
  void dispose() {
    AssetsAudioPlayer.newPlayer().stop();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    return Container();
  }
}