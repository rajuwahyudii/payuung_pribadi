class ModelKategoriKeuangan {
  String? label;
  String? icon;

  ModelKategoriKeuangan({
    this.label,
    this.icon,
  });

  factory ModelKategoriKeuangan.fromJson(Map<String, dynamic> json) =>
      ModelKategoriKeuangan(
        label: json["label"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "icon": icon,
      };
}
