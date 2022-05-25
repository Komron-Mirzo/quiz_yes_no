import './question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizBrain {
  int _firstQuestion = 0;
  final List<Question> _questionBank = [
    Question(
      q: "The longest river in the world is the Amazon River.",
      a: false,
    ),
    Question(
      q: "Polar bears can only live in the Arctic region, not in the Antarctic.",
      a: true,
    ),
    Question(
      q: "The United Kingdom is almost the same size as France.",
      a: false,
    ),
    Question(
      q: "Walt Disney has the record for most Academy Awards.",
      a: true,
    ),
    Question(
      q: "By lying a frog on its back and softly caressing its tummy, it is possible to hypnotize it.",
      a: true,
    ),
    Question(
      q: "The moon is wider than Australia.",
      a: false,
    ),
    Question(
      q: "Daily, your nose and sinuses create almost one liter of mucus.",
      a: true,
    ),
    Question(
      q: "Seahorses have stomachs, which aid in the digestion of food.",
      a: false,
    ),
    Question(
      q: "The first Disney princess was Cinderella.",
      a: false,
    ),
    Question(
      q: "Patients with COVID-19 may use ibuprofen, aspirin, or naproxen as anti-inflammatory medications.",
      a: true,
    ),
  ];

  void nextQuestion() {
    if (_firstQuestion < _questionBank.length - 1) {
      _firstQuestion++;
    }
  }

  String getQuestionText() {
    return _questionBank[_firstQuestion].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_firstQuestion].questionAnswer;
  }

  bool isFinished() {
    if (_firstQuestion >= _questionBank.length - 1) {
      print("Now returning true");
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _firstQuestion = 0;
  }
}
