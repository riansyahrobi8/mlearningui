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
      isAnswer: true,
      answer:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of 'de Finibus Bonorum et Malorum' (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, 'Lorem ipsum dolor sit amet..', comes from a line in section 1.10.32.",
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
