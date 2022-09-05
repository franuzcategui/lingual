import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:translator/translator.dart' as tsltor;

class TranslationScreen extends StatefulWidget {
  const TranslationScreen({Key? key}) : super(key: key);

  @override
  State<TranslationScreen> createState() => _TranslationScreenState();
}

class _TranslationScreenState extends State<TranslationScreen> {
  final translator = tsltor.GoogleTranslator();
  ARKitController? controller;
  String person = '';
  SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String _lastWords = '';
  String _translatedWords = '';
  String _displayWords = '';

  @override
  void initState() {
    super.initState();
    _initSpeech();
    _startListening();
  }


  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    setState(() {});
  }


  /// Each time to start a speech recognition session
  void _startListening() async {
    await _speechToText.listen(onResult: _onSpeechResult);
    setState(() {});
  }

  /// Manually stop the active speech recognition session
  /// Note that there are also timeouts that each platform enforces
  /// and the SpeechToText plugin supports setting timeouts on the
  /// listen method.
  void _stopListening() async {
    await _speechToText.stop();
    setState(() {});
  }

  /// This is the callback that the SpeechToText plugin calls when
  /// the platform returns recognized words.
  void _onSpeechResult(SpeechRecognitionResult result) async {
    final String speech = result.recognizedWords;
    _translatedWords = await _wordTranslator(speech);
    _lastWords = lastParagraph(_translatedWords);
    _displayWords = latestWords(_translatedWords, 5);
    setState(() {
    });
  }

  String lastParagraph(String text) {
    var separator = '.';
    return text.split(separator).last;
  }

  String latestWords(String text, int numberOfWords) {
    List<String> listOfWords = text.split(' ');
    int start = listOfWords.length > numberOfWords ? (listOfWords.length - numberOfWords) : 0;
    List<String> listOfLastWords = listOfWords.sublist(start,listOfWords.length);
    String latestWords = '';
    for(String word in listOfLastWords) {
      latestWords = latestWords + ' ' +word;
    }
    return latestWords;
  }

  Future<String> _wordTranslator(String wordToTranslate) async {
    var translation = await translator.translate(wordToTranslate, from: 'en', to: 'es');
    String translatedWord = translation.text;
    return translatedWord;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed:
        // If not yet listening for speech start, otherwise stop
        _speechToText.isNotListening ? _startListening : _stopListening,
        tooltip: 'Listen',
        child: Icon(_speechToText.isNotListening ? Icons.mic_off : Icons.mic),
      ),
      appBar: AppBar(title: Text('Smiley'),),
      body: Stack(
        children:  [ARKitSceneView(
          configuration: ARKitConfiguration.faceTracking,
          onARKitViewCreated: (c) => onArKitViewCreated(c),
        ),
      Align(
        alignment: Alignment(0, 0.8),
          child: Text(// If listening is active show the recognized words
            _speechToText.isListening
                ? '$_displayWords'
            // If listening isn't active but could be tell the user
            // how to start it, otherwise indicate that speech
            // recognition is not yet ready or not supported on
            // the target device
                : _speechEnabled
                ? 'Tap the microphone to start listening...'
                : 'Speech not available', style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),),),
          Align(
            alignment: Alignment.topCenter,
            child: Text(person, style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),),),
        ],
      ),
    );
  }

  void onArKitViewCreated(ARKitController c) {
    this.controller = c;
    this.controller?.onUpdateNodeForAnchor = onUpdateNodeForAnchor;
  }

  void onUpdateNodeForAnchor(ARKitAnchor anchor) {
    if (anchor is ARKitFaceAnchor) {
      final ARKitFaceAnchor faceAnchor = anchor;

      final smile = faceAnchor.blendShapes['mouthSmile_L']!;
      if (smile > 0.5) {
        setState(() => person = 'Happy');
      } else if (smile < 0.0001) {
        setState(() => person = 'Sad');
      } else {
        setState(() => person = '');
      }
      
    }

  }
  
  
  
}
