class ModelExploreWellness {
  String? label;
  String? icon;

  ModelExploreWellness({
    this.label,
    this.icon,
  });

  factory ModelExploreWellness.fromJson(Map<String, dynamic> json) =>
      ModelExploreWellness(
        label: json["label"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "icon": icon,
      };
}
