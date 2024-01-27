import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:video_player/video_player.dart';

part 'background_state.dart';

class BackgroundCubit extends Cubit<BackgroundState> {
  BackgroundCubit() : super(BackgroundInitial());

  VideoPlayerController? controller;
  Future<void>? initializeVideoPlayerFuture;

  void playVideo(){
    initializeVideoPlayerFuture;
    controller = VideoPlayerController.networkUrl(
      Uri(path: 'https://www.youtube.com/watch?v=7aSuxS-XT3M&t=37s')
    //VideoPlayerController.asset('assets/videos/videobg.mp4'
    )..initialize().then((_) {
        controller!.play();
        controller!.setLooping(true);
    });
    initializeVideoPlayerFuture = controller!.initialize();
    controller!.setLooping(true);
  }
  void dispose() {
    controller!.dispose();
  }
}
