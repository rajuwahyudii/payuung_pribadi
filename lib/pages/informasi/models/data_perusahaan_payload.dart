class DataPerusahaanPayload {
  String? namaUsaha;
  String? alamatUsaha;
  String? jabatan;
  String? lamaBekerja;

  DataPerusahaanPayload({
    this.namaUsaha,
    this.alamatUsaha,
    this.jabatan,
    this.lamaBekerja,
  });

  factory DataPerusahaanPayload.fromJson(Map<String, dynamic> json) =>
      DataPerusahaanPayload(
        namaUsaha: json["namaUsaha"],
        alamatUsaha: json["alamatUsaha"],
        jabatan: json["jabatan"],
        lamaBekerja: json["lamaBekerja"],
      );

  Map<String, dynamic> toJson() => {
        "namaUsaha": namaUsaha,
        "alamatUsaha": alamatUsaha,
        "jabatan": jabatan,
        "lamaBekerja": lamaBekerja,
      };
}
