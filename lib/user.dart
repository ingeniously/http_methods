// To parse this JSON data, do
//
//     final postmodel = postmodelFromJson(jsonString);

import 'dart:convert';

Postmodel postmodelFromJson(String str) => Postmodel.fromJson(json.decode(str));

String postmodelToJson(Postmodel data) => json.encode(data.toJson());

class Postmodel {
    Postmodel({
        required this.inputs,
        required this.globalParameters,
    });

    Inputs inputs;
    GlobalParameters globalParameters;

    factory Postmodel.fromJson(Map<String, dynamic> json) => Postmodel(
        inputs: Inputs.fromJson(json["Inputs"]),
        globalParameters: GlobalParameters.fromJson(json["GlobalParameters"]),
    );

    Map<String, dynamic> toJson() => {
        "Inputs": inputs.toJson(),
        "GlobalParameters": globalParameters.toJson(),
    };
}

class GlobalParameters {
    GlobalParameters();

    factory GlobalParameters.fromJson(Map<String, dynamic> json) => GlobalParameters(
    );

    Map<String, dynamic> toJson() => {
    };
}

class Inputs {
    Inputs({
        required this.input1,
    });

    Input1 input1;

    factory Inputs.fromJson(Map<String, dynamic> json) => Inputs(
        input1: Input1.fromJson(json["input1"]),
    );

    Map<String, dynamic> toJson() => {
        "input1": input1.toJson(),
    };
}

class Input1 {
    Input1({
        required this.columnNames,
        required this.values,
    });

    List<String> columnNames;
    List<List<String>> values;

    factory Input1.fromJson(Map<String, dynamic> json) => Input1(
        columnNames: List<String>.from(json["ColumnNames"].map((x) => x)),
        values: List<List<String>>.from(json["Values"].map((x) => List<String>.from(x.map((x) => x)))),
    );

    Map<String, dynamic> toJson() => {
        "ColumnNames": List<dynamic>.from(columnNames.map((x) => x)),
        "Values": List<dynamic>.from(values.map((x) => List<dynamic>.from(x.map((x) => x)))),
    };
}
