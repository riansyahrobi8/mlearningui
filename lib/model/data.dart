class Question {
  final String title;
  final bool isAnswer;
  final String answer;
  final DateTime dateTime;

  Question({this.title, this.isAnswer, this.answer, this.dateTime});
}

List<Question> questionsList = [
  Question(
      title: "1 + 1 berapa ?",
      isAnswer: false,
      answer: "",
      dateTime: DateTime.now()),
  Question(
      title: "Makan sambil khayang apa boleh pak ?",
      isAnswer: true,
      answer:
          "Nak, kamu sekolah cuma sampe gerbang aja kah ? pertanyaan mu ngaco nak",
      dateTime: DateTime.now()),
  Question(
      title: "Pak, Apakah memberi makan anjing itu haram ?",
      isAnswer: true,
      answer:
          "Terima kasih telah bertanya. Maaf sebelumnya, coba tanya pak ustad dulu ya",
      dateTime: DateTime.now()),
  Question(
      title: "1 + 1 berapa ?",
      isAnswer: false,
      answer: "",
      dateTime: DateTime.now()),
  Question(
      title: "Makan sambil khayang apa boleh pak ?",
      isAnswer: true,
      answer:
          "Nak, kamu sekolah cuma sampe gerbang aja kah ? pertanyaan mu ngaco nak",
      dateTime: DateTime.now()),
  Question(
      title: "Pak, Apakah memberi makan anjing itu haram ?",
      isAnswer: true,
      answer:
          "Terima kasih telah bertanya. Maaf sebelumnya, coba tanya pak ustad dulu ya",
      dateTime: DateTime.now())
];
