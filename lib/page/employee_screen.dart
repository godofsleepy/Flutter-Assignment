import 'package:flutter/material.dart';
import 'package:flutter_assignment/model/employee_model.dart';

class Employee extends StatefulWidget {
  @override
  _EmployeeState createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  List<EmployeeModel> _data = [
    EmployeeModel(
      age: "17",
      img: "",
      id: "1",
      name: "Prepatu",
      salary: "1 Million USD",
    ),
    EmployeeModel(
      age: "17",
      img: "",
      id: "1",
      name: "Porto",
      salary: "1 Million USD",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (BuildContext context, int index) => Card(
          child: ListTile(
            title: Text(_data[index].name),
            subtitle: Text("umur : ${_data[index].age}"),
            trailing: Text("gaji : ${_data[index].salary}"),
          ),
        ),
      ),
    );
  }
}
