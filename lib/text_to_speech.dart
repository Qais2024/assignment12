import 'package:flutter/material.dart';
import 'package:text_to_speech/text_to_speech.dart';
class texttospeech extends StatelessWidget {
  final TextToSpeech tts=TextToSpeech();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () {
          tts.speak("hello i am qais");
        }, child: Text("Speak"),
        ),
      ),
    );
  }
}
