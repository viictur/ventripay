class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void intro() {
    print('$name is $age yrs old');
  }
}

enum Color {
  red("na red"),
  blue("na blue");

  final String description;
  const Color(this.description);
}

int sum(int a, int b) {
  return a + b;
}

void main() {
  Person p1 = Person('Victor', 2);
  print('${p1.name} ${p1.age}');
  p1.intro();

  print(Color.blue.description);
  print(sum(2, 2));

  String? name;
  name ??= "Guest";
  print(name);
}
