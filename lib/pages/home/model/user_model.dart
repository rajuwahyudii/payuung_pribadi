class ModelUser {
  String? nama;
  String? tanggalLahir;
  String? jenisKelamin;
  String? email;
  String? noHP;
  String? pendidikan;
  String? statusPernikahan;

  ModelUser({
    this.nama,
    this.tanggalLahir,
    this.jenisKelamin,
    this.email,
    this.noHP,
    this.pendidikan,
    this.statusPernikahan,
  });

  factory ModelUser.fromJson(Map<String, dynamic> json) => ModelUser(
        nama: json["nama"],
        tanggalLahir: json["tanggalLahir"],
        jenisKelamin: json["jenisKelamin"],
        email: json["email"],
        noHP: json["noHP"],
        pendidikan: json["pendidikan"],
        statusPernikahan: json["statusPernikahan"],
      );

  Map<String, dynamic> toJson() => {
        "nama": nama,
        "tanggalLahir": tanggalLahir,
        "jenisKelamin": jenisKelamin,
        "email": email,
        "noHP": noHP,
        "pendidikan": pendidikan,
        "statusPernikahan": statusPernikahan,
      };
}
