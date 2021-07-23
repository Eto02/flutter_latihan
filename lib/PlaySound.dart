import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerApp extends StatefulWidget {
  @override
  _AudioPlayerAppState createState() => _AudioPlayerAppState();
}

class _AudioPlayerAppState extends State<AudioPlayerApp> {
  String durasi = "00.00";
  AudioPlayer audioPlayer;
  _AudioPlayerAppState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((event) {
      setState(() {
        durasi = event.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.RELEASE);
  }
  void playSound(String url) async {
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateFull Widget Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                playSound(
                    'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
              },
              child: Text('Play'),
            ),
            ElevatedButton(
              onPressed: () {
                pauseSound();
              },
              child: Text('Pause'),
            ),
            ElevatedButton(
              onPressed: () {
                stopSound();
              },
              child: Text('Stop'),
            ),
            ElevatedButton(
              onPressed: () {
                resumeSound();
              },
              child: Text('Resume'),
            ),
            Text(
              durasi,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
