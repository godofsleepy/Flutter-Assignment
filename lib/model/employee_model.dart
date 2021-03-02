import 'dart:convert';

class EmployeeModel {
  String id;
  String name;
  String salary;
  String age;
  String img;
  EmployeeModel({
    this.id,
    this.name,
    this.salary,
    this.age,
    this.img,
  });


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'salary': salary,
      'age': age,
      'img': img,
    };
  }

  factory EmployeeModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return EmployeeModel(
      id: map['id'],
      name: map['name'],
      salary: map['salary'],
      age: map['age'],
      img: map['img'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EmployeeModel.fromJson(String source) => EmployeeModel.fromMap(json.decode(source));
}
