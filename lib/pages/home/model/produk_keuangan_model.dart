import 'package:flutter/material.dart';

class ModelProdukKeuangan {
  String? label;
  IconData? icon;

  ModelProdukKeuangan({
    this.label,
    this.icon,
  });

  factory ModelProdukKeuangan.fromJson(Map<String, dynamic> json) =>
      ModelProdukKeuangan(
        label: json["label"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "icon": icon,
      };
}
