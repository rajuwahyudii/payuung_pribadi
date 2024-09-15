class ModelProdukKeuangan {
  String? label;
  String? icon;

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
