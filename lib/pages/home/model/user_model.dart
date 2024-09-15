class ModelUser {
  String? nama;

  ModelUser({
    this.nama,
  });

  factory ModelUser.fromJson(Map<String, dynamic> json) => ModelUser(
        nama: json["nama"],
      );

  Map<String, dynamic> toJson() => {
        "nama": nama,
      };
}
