import 'package:flutter/material.dart';

class GifTestView extends StatelessWidget {
  const GifTestView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Show GIF for 5 seconds'),
        ),
        body: const Center(
          child: ShowGifForFiveSeconds(
            gifPath:
                'https://gifdb.com/images/high/dragon-roar-fire-whbigw075ixf19r3.gif',
          ),
        ),
      ),
    );
  }
}

class ShowGifForFiveSeconds extends StatefulWidget {
  final String gifPath;

  const ShowGifForFiveSeconds({super.key, required this.gifPath});

  @override
  _ShowGifForFiveSecondsState createState() => _ShowGifForFiveSecondsState();
}

class _ShowGifForFiveSecondsState extends State<ShowGifForFiveSeconds> {
  bool _showGif = true;

  @override
  void initState() {
    super.initState();
    // Set a timer to hide the GIF after 5 seconds
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _showGif = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _showGif
        ? Image.network(widget.gifPath)
        : const Text('GIF hidden after 5 seconds');
  }
}
