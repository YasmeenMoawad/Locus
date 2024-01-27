import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:locus/core/utils/background/logic/background_cubit.dart';
import 'package:video_player/video_player.dart';

class Background extends StatelessWidget {
  Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BackgroundCubit playVid = BlocProvider.of<BackgroundCubit>(context);
    return BlocBuilder<BackgroundCubit, BackgroundState>(
        builder: (context, state) {
          return FutureBuilder(
            future: playVid.initializeVideoPlayerFuture,
            builder: (context, snapshot){
              if (snapshot.connectionState == ConnectionState.done) {
                return SizedBox.expand(
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      width: 50,
                      //playVid.controller?.value.size.width ?? 0,
                      height: 50,
                      //playVid.controller?.value.size.height ?? 0,
                      child: BlocProvider.of<BackgroundCubit>(context).controller
                          == null? const Center(child: Text('null'))
                          : VideoPlayer(playVid.controller!),
                    ),
                  ),
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }}
          );
        }
    );
  }
}
