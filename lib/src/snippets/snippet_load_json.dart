import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import 'package:flutter/material.dart';

class SnippetLoadJson extends StatefulWidget {
  const SnippetLoadJson({Key? key}) : super(key: key);

  @override
  _SnippetLoadJsonState createState() => _SnippetLoadJsonState();
}

class _SnippetLoadJsonState extends State<SnippetLoadJson> {
  bool _isLoading = true;
  List<Data>? _data;

  void _loadJson() async {
    dynamic data = await rootBundle.loadString('assets/json/computer.json');
    final jsonResponse = json.decode(data);

    Computer computer = Computer.fromJson(jsonResponse);

    setState(() {
      _data = computer.data;
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _loadJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _isLoading
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: _data!.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(_data![index].id.toString()),
                        ),
                        Expanded(
                          child: Text(_data![index].name),
                        ),
                        Expanded(
                          child: Column(
                            children: _data![index].part.map((index) {
                              return Text(index);
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
      ),
    );
  }
}

class Computer {
  List<Data>? data = [];

  Computer({required this.data});

  Computer.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int id;
  String name;
  List<String> part;

  Data({
    required this.id,
    required this.name,
    required this.part,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      name: json['name'],
      part: json['part'].cast<String>(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['part'] = this.part;
    return data;
  }
}
