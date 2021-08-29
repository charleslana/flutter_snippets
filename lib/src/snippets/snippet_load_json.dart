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

  Future<void> _loadJson() async {
    final dynamic data =
        await rootBundle.loadString('assets/json/computer.json');
    final jsonResponse = json.decode(data);

    final Computer computer = Computer.fromJson(jsonResponse);

    setState(() {
      _data = computer.data;
      _isLoading = false;
    });
  }

  @override
  void initState() {
    _loadJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _isLoading
            ? const CircularProgressIndicator()
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
  Computer({required this.data});

  Computer.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      json['data'].forEach((dynamic value) {
        data!.add(Data.fromJson(value));
      });
    }
  }

  List<Data>? data = [];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
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

  int id;
  String name;
  List<String> part;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['part'] = part;
    return data;
  }
}
