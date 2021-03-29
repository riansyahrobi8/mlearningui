class Course {
  final String title;
  final List<Theory> theryList;

  Course({this.title, this.theryList});
}

class Theory {
  final String title;

  Theory({this.title});
}

List<Course> dataCourse = [
  Course(title: "Bahasa Indonesia", theryList: [
    Theory(title: "Materi1.pdf"),
    Theory(title: "Materi1.pdf"),
    Theory(title: "Materi1.pdf"),
    Theory(title: "Materi1.pdf")
  ]),
  Course(title: "Matematika", theryList: [
    Theory(title: "Materi1.pdf"),
    Theory(title: "Materi1.pdf"),
    Theory(title: "Materi1.pdf")
  ]),
  Course(title: "Pendidikan Agama", theryList: [
    Theory(title: "Materi1.pdf"),
    Theory(title: "Materi1.pdf"),
    Theory(title: "Materi1.pdf"),
    Theory(title: "Materi1.pdf"),
    Theory(title: "Materi1.pdf")
  ]),
];
