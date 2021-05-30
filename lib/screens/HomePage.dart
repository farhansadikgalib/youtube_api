import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Home extends StatefulWidget {
  Home({Key key , this.url}) : super(key: key);
  final url;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  YoutubePlayerController _controller;

  void runYoutbePlayer() {
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(widget.url),
        flags: YoutubePlayerFlags(
          enableCaption: false,
          isLive: false,
          autoPlay: true,
        ));
  }

  @override
  void initState() {
    runYoutbePlayer();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }



  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
      ),
      builder: (context,player){
       return Scaffold(

         body: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children:<Widget> [

             player,
             SizedBox(height: 20,),

             Text("Youtube Player"),



           ],



         ),



       );

      }

    );
  }
}

