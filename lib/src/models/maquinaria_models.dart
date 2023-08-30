import 'dart:convert';

class MaquinaModel {
    String codigoSap;
    String descripcion;
    int diasTaller;
    String nroAviso;

    MaquinaModel({
        required this.codigoSap,
        required this.descripcion,
        required this.diasTaller,
        required this.nroAviso,
    });

    factory MaquinaModel.fromRawJson(String str) => MaquinaModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory MaquinaModel.fromJson(Map<String, dynamic> json) => MaquinaModel(
        codigoSap: json["codigoSap"],
        descripcion: json["descripcion"],
        diasTaller: json["diasTaller"],
        nroAviso: json["nroAviso"],
    );

    Map<String, dynamic> toJson() => {
        "codigoSap": codigoSap,
        "descripcion": descripcion,
        "diasTaller": diasTaller,
        "nroAviso": nroAviso,
    };
}
