import 'dart:convert';

class PaymentTypeModel {
  final int? id;
  final String name;
  final String acronya;
  final bool enable;

  PaymentTypeModel({
    this.id,
    required this.name,
    required this.acronya,
    required this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'acronya': acronya,
      'enable': enable,
    };
  }

  factory PaymentTypeModel.fromMap(Map<String, dynamic> map) {
    return PaymentTypeModel(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] as String,
      acronya: map['acronya'] as String,
      enable: map['enable'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentTypeModel.fromJson(String source) =>
      PaymentTypeModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
