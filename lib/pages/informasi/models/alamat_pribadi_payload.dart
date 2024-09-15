class AlamatPribadiPayload {
  String? nik;
  String? alamat;
  String? provinsi;
  String? kota;
  String? kecamatan;
  String? kelurahan;
  String? kodePos;

  AlamatPribadiPayload({
    this.nik,
    this.alamat,
    this.provinsi,
    this.kota,
    this.kecamatan,
    this.kelurahan,
    this.kodePos,
  });

  factory AlamatPribadiPayload.fromJson(Map<String, dynamic> json) =>
      AlamatPribadiPayload(
        nik: json["nik"],
        alamat: json["alamat"],
        provinsi: json["provinsi"],
        kota: json["kota"],
        kecamatan: json["kecamatan"],
        kelurahan: json["kelurahan"],
        kodePos: json["kodePos"],
      );

  Map<String, dynamic> toJson() => {
        "nik": nik,
        "alamat": alamat,
        "provinsi": provinsi,
        "kota": kota,
        "kecamatan": kecamatan,
        "kelurahan": kelurahan,
        "kodePos": kodePos,
      };
}
