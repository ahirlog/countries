// ignore_for_file: prefer_if_null_operators, unnecessary_new, prefer_conditional_assignment, constant_identifier_names

import 'dart:convert';

List<ContinentModel> continentModelFromJson(String str) =>
    List<ContinentModel>.from(
        json.decode(str).map((x) => ContinentModel.fromJson(x)));

String continentModelToJson(List<ContinentModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ContinentModel {
  ContinentModel({
    this.name,
    this.tld,
    this.cca2,
    this.ccn3,
    this.cca3,
    this.cioc,
    this.independent,
    this.status,
    this.unMember,
    this.currencies,
    this.idd,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.languages,
    this.translations,
    this.latlng,
    this.landlocked,
    this.borders,
    this.area,
    this.demonyms,
    this.flag,
    this.maps,
    this.population,
    this.gini,
    this.fifa,
    this.car,
    this.timezones,
    this.continents,
    this.flags,
    this.coatOfArms,
    this.startOfWeek,
    this.capitalInfo,
    this.postalCode,
  });

  Name? name;
  List<String>? tld;
  String? cca2;
  String? ccn3;
  String? cca3;
  String? cioc;
  bool? independent;
  Status? status;
  bool? unMember;
  Currencies? currencies;
  Idd? idd;
  List<String>? capital;
  List<String>? altSpellings;
  Region? region;
  String? subregion;
  Map<String, String>? languages;
  Map<String, Translation>? translations;
  List<double>? latlng;
  bool? landlocked;
  List<String>? borders;
  double? area;
  Demonyms? demonyms;
  String? flag;
  Maps? maps;
  int? population;
  Map<String, double>? gini;
  String? fifa;
  Car? car;
  List<String>? timezones;
  List<Continent>? continents;
  CoatOfArms? flags;
  CoatOfArms? coatOfArms;
  StartOfWeek? startOfWeek;
  CapitalInfo? capitalInfo;
  PostalCode? postalCode;

  factory ContinentModel.fromJson(Map<String, dynamic> json) => ContinentModel(
        name: Name.fromJson(json["name"]),
        tld: json["tld"] == null
            ? null
            : List<String>.from(json["tld"].map((x) => x)),
        cca2: json["cca2"],
        ccn3: json["ccn3"] == null ? null : json["ccn3"],
        cca3: json["cca3"],
        cioc: json["cioc"] == null ? null : json["cioc"],
        independent: json["independent"] == null ? null : json["independent"],
        status: statusValues.map![json["status"]],
        unMember: json["unMember"],
        currencies: json["currencies"] == null
            ? null
            : Currencies.fromJson(json["currencies"]),
        idd: Idd.fromJson(json["idd"]),
        capital: json["capital"] == null
            ? null
            : List<String>.from(json["capital"].map((x) => x)),
        altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
        region: regionValues.map![json["region"]],
        subregion: json["subregion"] == null ? null : json["subregion"],
        languages: json["languages"] == null
            ? null
            : Map.from(json["languages"])
                .map((k, v) => MapEntry<String, String>(k, v)),
        translations: Map.from(json["translations"]).map((k, v) =>
            MapEntry<String, Translation>(k, Translation.fromJson(v))),
        latlng: List<double>.from(json["latlng"].map((x) => x.toDouble())),
        landlocked: json["landlocked"],
        borders: json["borders"] == null
            ? null
            : List<String>.from(json["borders"].map((x) => x)),
        area: json["area"].toDouble(),
        demonyms: json["demonyms"] == null
            ? null
            : Demonyms.fromJson(json["demonyms"]),
        flag: json["flag"] == null ? null : json["flag"],
        maps: Maps.fromJson(json["maps"]),
        population: json["population"],
        gini: json["gini"] == null
            ? null
            : Map.from(json["gini"])
                .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        fifa: json["fifa"] == null ? null : json["fifa"],
        car: Car.fromJson(json["car"]),
        timezones: List<String>.from(json["timezones"].map((x) => x)),
        continents: List<Continent>.from(
            json["continents"].map((x) => continentValues.map![x])),
        flags: CoatOfArms.fromJson(json["flags"]),
        coatOfArms: CoatOfArms.fromJson(json["coatOfArms"]),
        startOfWeek: startOfWeekValues.map![json["startOfWeek"]],
        capitalInfo: CapitalInfo.fromJson(json["capitalInfo"]),
        postalCode: json["postalCode"] == null
            ? null
            : PostalCode.fromJson(json["postalCode"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name!.toJson(),
        "tld": tld == null ? null : List<dynamic>.from(tld!.map((x) => x)),
        "cca2": cca2,
        "ccn3": ccn3 == null ? null : ccn3,
        "cca3": cca3,
        "cioc": cioc == null ? null : cioc,
        "independent": independent == null ? null : independent,
        "status": statusValues.reverse[status],
        "unMember": unMember,
        "currencies": currencies == null ? null : currencies!.toJson(),
        "idd": idd!.toJson(),
        "capital":
            capital == null ? null : List<dynamic>.from(capital!.map((x) => x)),
        "altSpellings": List<dynamic>.from(altSpellings!.map((x) => x)),
        "region": regionValues.reverse[region],
        "subregion": subregion == null ? null : subregion,
        "languages": languages == null
            ? null
            : Map.from(languages!)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "translations": Map.from(translations!)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "latlng": List<dynamic>.from(latlng!.map((x) => x)),
        "landlocked": landlocked,
        "borders":
            borders == null ? null : List<dynamic>.from(borders!.map((x) => x)),
        "area": area,
        "demonyms": demonyms == null ? null : demonyms!.toJson(),
        "flag": flag == null ? null : flag,
        "maps": maps!.toJson(),
        "population": population,
        "gini": gini == null
            ? null
            : Map.from(gini!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "fifa": fifa == null ? null : fifa,
        "car": car!.toJson(),
        "timezones": List<dynamic>.from(timezones!.map((x) => x)),
        "continents": List<dynamic>.from(
            continents!.map((x) => continentValues.reverse[x])),
        "flags": flags!.toJson(),
        "coatOfArms": coatOfArms!.toJson(),
        "startOfWeek": startOfWeekValues.reverse[startOfWeek],
        "capitalInfo": capitalInfo!.toJson(),
        "postalCode": postalCode == null ? null : postalCode!.toJson(),
      };
}

class CapitalInfo {
  CapitalInfo({
    this.latlng,
  });

  List<double>? latlng;

  factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
        latlng: json["latlng"] == null
            ? null
            : List<double>.from(json["latlng"].map((x) => x.toDouble())),
      );

  Map<String, dynamic> toJson() => {
        "latlng":
            latlng == null ? null : List<dynamic>.from(latlng!.map((x) => x)),
      };
}

class Car {
  Car({
    this.signs,
    this.side,
  });

  List<String>? signs;
  Side? side;

  factory Car.fromJson(Map<String, dynamic> json) => Car(
        signs: json["signs"] == null
            ? null
            : List<String>.from(json["signs"].map((x) => x)),
        side: sideValues.map![json["side"]],
      );

  Map<String, dynamic> toJson() => {
        "signs":
            signs == null ? null : List<dynamic>.from(signs!.map((x) => x)),
        "side": sideValues.reverse[side],
      };
}

enum Side { LEFT, RIGHT }

final sideValues = EnumValues({"left": Side.LEFT, "right": Side.RIGHT});

class CoatOfArms {
  CoatOfArms({
    this.png,
    this.svg,
  });

  String? png;
  String? svg;

  factory CoatOfArms.fromJson(Map<String, dynamic> json) => CoatOfArms(
        png: json["png"] == null ? null : json["png"],
        svg: json["svg"] == null ? null : json["svg"],
      );

  Map<String, dynamic> toJson() => {
        "png": png == null ? null : png,
        "svg": svg == null ? null : svg,
      };
}

enum Continent {
  OCEANIA,
  ANTARCTICA,
  NORTH_AMERICA,
  EUROPE,
  ASIA,
  AFRICA,
  SOUTH_AMERICA
}

final continentValues = EnumValues({
  "Africa": Continent.AFRICA,
  "Antarctica": Continent.ANTARCTICA,
  "Asia": Continent.ASIA,
  "Europe": Continent.EUROPE,
  "North America": Continent.NORTH_AMERICA,
  "Oceania": Continent.OCEANIA,
  "South America": Continent.SOUTH_AMERICA
});

class Currencies {
  Currencies({
    this.pgk,
    this.eur,
    this.mkd,
    this.nzd,
    this.cny,
    this.lsl,
    this.zar,
    this.ang,
    this.mxn,
    this.htg,
    this.thb,
    this.usd,
    this.myr,
    this.wst,
    this.lbp,
    this.cuc,
    this.cup,
    this.xcd,
    this.isk,
    this.afn,
    this.ern,
    this.inr,
    this.pyg,
    this.uah,
    this.scr,
    this.kyd,
    this.dzd,
    this.gnf,
    this.zmw,
    this.bhd,
    this.mmk,
    this.etb,
    this.ssp,
    this.aud,
    this.mwk,
    this.jod,
    this.bbd,
    this.idr,
    this.kgs,
    this.xaf,
    this.bam,
    this.czk,
    this.fjd,
    this.sos,
    this.gel,
    this.zwl,
    this.sbd,
    this.gip,
    this.omr,
    this.mru,
    this.hkd,
    this.cve,
    this.pen,
    this.yer,
    this.mnt,
    this.stn,
    this.uzs,
    this.bif,
    this.khr,
    this.egp,
    this.uyu,
    this.gtq,
    this.xof,
    this.shp,
    this.qar,
    this.npr,
    this.bob,
    this.chf,
    this.aed,
    this.cad,
    this.gbp,
    this.brl,
    this.bwp,
    this.krw,
    this.sgd,
    this.mvr,
    this.ghs,
    this.amd,
    this.kmf,
    this.ils,
    this.gyd,
    this.syp,
    this.tvd,
    this.nok,
    this.twd,
    this.ars,
    this.cdf,
    this.ves,
    this.mad,
    this.awg,
    this.lak,
    this.bzd,
    this.bmd,
    this.sdg,
    this.gmd,
    this.clp,
    this.dkk,
    this.lkr,
    this.xpf,
    this.ggp,
    this.cop,
    this.mzn,
    this.lrd,
    this.rwf,
    this.mur,
    this.azn,
    this.vuv,
    this.tjs,
    this.srd,
    this.aoa,
    this.pln,
    this.sll,
    this.rub,
    this.btn,
    this.mdl,
    this.imp,
    this.pkr,
    this.jmd,
    this.ron,
    this.iqd,
    this.byn,
    this.rsd,
    this.nad,
    this.mop,
    this.kes,
    this.ugx,
    this.all,
    this.tmt,
    this.tnd,
    this.sar,
    this.bsd,
    this.dop,
    this.vnd,
    this.irr,
    this.tzs,
    this.bdt,
    this.jpy,
    this.kwd,
    this.hrk,
    this.fok,
    this.hnl,
    this.pab,
    this.fkp,
    this.currenciesTry,
    this.crc,
    this.lyd,
    this.php,
    this.ckd,
    this.nio,
    this.bgn,
    this.huf,
    this.djf,
    this.bnd,
    this.kzt,
    this.kid,
    this.jep,
    this.top,
    this.mga,
    this.kpw,
    this.szl,
    this.sek,
    this.ngn,
    this.ttd,
  });

  Aed? pgk;
  Aed? eur;
  Aed? mkd;
  Aed? nzd;
  Aed? cny;
  Aed? lsl;
  Aed? zar;
  Aed? ang;
  Aed? mxn;
  Aed? htg;
  Aed? thb;
  Aed? usd;
  Aed? myr;
  Aed? wst;
  Aed? lbp;
  Aed? cuc;
  Aed? cup;
  Aed? xcd;
  Aed? isk;
  Aed? afn;
  Aed? ern;
  Aed? inr;
  Aed? pyg;
  Aed? uah;
  Aed? scr;
  Aed? kyd;
  Aed? dzd;
  Aed? gnf;
  Aed? zmw;
  Aed? bhd;
  Aed? mmk;
  Aed? etb;
  Aed? ssp;
  Aed? aud;
  Aed? mwk;
  Aed? jod;
  Aed? bbd;
  Aed? idr;
  Aed? kgs;
  Aed? xaf;
  Bam? bam;
  Aed? czk;
  Aed? fjd;
  Aed? sos;
  Aed? gel;
  Aed? zwl;
  Aed? sbd;
  Aed? gip;
  Aed? omr;
  Aed? mru;
  Aed? hkd;
  Aed? cve;
  Aed? pen;
  Aed? yer;
  Aed? mnt;
  Aed? stn;
  Aed? uzs;
  Aed? bif;
  Aed? khr;
  Aed? egp;
  Aed? uyu;
  Aed? gtq;
  Aed? xof;
  Aed? shp;
  Aed? qar;
  Aed? npr;
  Aed? bob;
  Aed? chf;
  Aed? aed;
  Aed? cad;
  Aed? gbp;
  Aed? brl;
  Aed? bwp;
  Aed? krw;
  Aed? sgd;
  Aed? mvr;
  Aed? ghs;
  Aed? amd;
  Aed? kmf;
  Aed? ils;
  Aed? gyd;
  Aed? syp;
  Aed? tvd;
  Aed? nok;
  Aed? twd;
  Aed? ars;
  Aed? cdf;
  Aed? ves;
  Aed? mad;
  Aed? awg;
  Aed? lak;
  Aed? bzd;
  Aed? bmd;
  Bam? sdg;
  Aed? gmd;
  Aed? clp;
  Aed? dkk;
  Aed? lkr;
  Aed? xpf;
  Aed? ggp;
  Aed? cop;
  Aed? mzn;
  Aed? lrd;
  Aed? rwf;
  Aed? mur;
  Aed? azn;
  Aed? vuv;
  Aed? tjs;
  Aed? srd;
  Aed? aoa;
  Aed? pln;
  Aed? sll;
  Aed? rub;
  Aed? btn;
  Aed? mdl;
  Aed? imp;
  Aed? pkr;
  Aed? jmd;
  Aed? ron;
  Aed? iqd;
  Aed? byn;
  Aed? rsd;
  Aed? nad;
  Aed? mop;
  Aed? kes;
  Aed? ugx;
  Aed? all;
  Aed? tmt;
  Aed? tnd;
  Aed? sar;
  Aed? bsd;
  Aed? dop;
  Aed? vnd;
  Aed? irr;
  Aed? tzs;
  Aed? bdt;
  Aed? jpy;
  Aed? kwd;
  Aed? hrk;
  Aed? fok;
  Aed? hnl;
  Aed? pab;
  Aed? fkp;
  Aed? currenciesTry;
  Aed? crc;
  Aed? lyd;
  Aed? php;
  Aed? ckd;
  Aed? nio;
  Aed? bgn;
  Aed? huf;
  Aed? djf;
  Aed? bnd;
  Aed? kzt;
  Aed? kid;
  Aed? jep;
  Aed? top;
  Aed? mga;
  Aed? kpw;
  Aed? szl;
  Aed? sek;
  Aed? ngn;
  Aed? ttd;

  factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
        pgk: json["PGK"] == null ? null : Aed.fromJson(json["PGK"]),
        eur: json["EUR"] == null ? null : Aed.fromJson(json["EUR"]),
        mkd: json["MKD"] == null ? null : Aed.fromJson(json["MKD"]),
        nzd: json["NZD"] == null ? null : Aed.fromJson(json["NZD"]),
        cny: json["CNY"] == null ? null : Aed.fromJson(json["CNY"]),
        lsl: json["LSL"] == null ? null : Aed.fromJson(json["LSL"]),
        zar: json["ZAR"] == null ? null : Aed.fromJson(json["ZAR"]),
        ang: json["ANG"] == null ? null : Aed.fromJson(json["ANG"]),
        mxn: json["MXN"] == null ? null : Aed.fromJson(json["MXN"]),
        htg: json["HTG"] == null ? null : Aed.fromJson(json["HTG"]),
        thb: json["THB"] == null ? null : Aed.fromJson(json["THB"]),
        usd: json["USD"] == null ? null : Aed.fromJson(json["USD"]),
        myr: json["MYR"] == null ? null : Aed.fromJson(json["MYR"]),
        wst: json["WST"] == null ? null : Aed.fromJson(json["WST"]),
        lbp: json["LBP"] == null ? null : Aed.fromJson(json["LBP"]),
        cuc: json["CUC"] == null ? null : Aed.fromJson(json["CUC"]),
        cup: json["CUP"] == null ? null : Aed.fromJson(json["CUP"]),
        xcd: json["XCD"] == null ? null : Aed.fromJson(json["XCD"]),
        isk: json["ISK"] == null ? null : Aed.fromJson(json["ISK"]),
        afn: json["AFN"] == null ? null : Aed.fromJson(json["AFN"]),
        ern: json["ERN"] == null ? null : Aed.fromJson(json["ERN"]),
        inr: json["INR"] == null ? null : Aed.fromJson(json["INR"]),
        pyg: json["PYG"] == null ? null : Aed.fromJson(json["PYG"]),
        uah: json["UAH"] == null ? null : Aed.fromJson(json["UAH"]),
        scr: json["SCR"] == null ? null : Aed.fromJson(json["SCR"]),
        kyd: json["KYD"] == null ? null : Aed.fromJson(json["KYD"]),
        dzd: json["DZD"] == null ? null : Aed.fromJson(json["DZD"]),
        gnf: json["GNF"] == null ? null : Aed.fromJson(json["GNF"]),
        zmw: json["ZMW"] == null ? null : Aed.fromJson(json["ZMW"]),
        bhd: json["BHD"] == null ? null : Aed.fromJson(json["BHD"]),
        mmk: json["MMK"] == null ? null : Aed.fromJson(json["MMK"]),
        etb: json["ETB"] == null ? null : Aed.fromJson(json["ETB"]),
        ssp: json["SSP"] == null ? null : Aed.fromJson(json["SSP"]),
        aud: json["AUD"] == null ? null : Aed.fromJson(json["AUD"]),
        mwk: json["MWK"] == null ? null : Aed.fromJson(json["MWK"]),
        jod: json["JOD"] == null ? null : Aed.fromJson(json["JOD"]),
        bbd: json["BBD"] == null ? null : Aed.fromJson(json["BBD"]),
        idr: json["IDR"] == null ? null : Aed.fromJson(json["IDR"]),
        kgs: json["KGS"] == null ? null : Aed.fromJson(json["KGS"]),
        xaf: json["XAF"] == null ? null : Aed.fromJson(json["XAF"]),
        bam: json["BAM"] == null ? null : Bam.fromJson(json["BAM"]),
        czk: json["CZK"] == null ? null : Aed.fromJson(json["CZK"]),
        fjd: json["FJD"] == null ? null : Aed.fromJson(json["FJD"]),
        sos: json["SOS"] == null ? null : Aed.fromJson(json["SOS"]),
        gel: json["GEL"] == null ? null : Aed.fromJson(json["GEL"]),
        zwl: json["ZWL"] == null ? null : Aed.fromJson(json["ZWL"]),
        sbd: json["SBD"] == null ? null : Aed.fromJson(json["SBD"]),
        gip: json["GIP"] == null ? null : Aed.fromJson(json["GIP"]),
        omr: json["OMR"] == null ? null : Aed.fromJson(json["OMR"]),
        mru: json["MRU"] == null ? null : Aed.fromJson(json["MRU"]),
        hkd: json["HKD"] == null ? null : Aed.fromJson(json["HKD"]),
        cve: json["CVE"] == null ? null : Aed.fromJson(json["CVE"]),
        pen: json["PEN"] == null ? null : Aed.fromJson(json["PEN"]),
        yer: json["YER"] == null ? null : Aed.fromJson(json["YER"]),
        mnt: json["MNT"] == null ? null : Aed.fromJson(json["MNT"]),
        stn: json["STN"] == null ? null : Aed.fromJson(json["STN"]),
        uzs: json["UZS"] == null ? null : Aed.fromJson(json["UZS"]),
        bif: json["BIF"] == null ? null : Aed.fromJson(json["BIF"]),
        khr: json["KHR"] == null ? null : Aed.fromJson(json["KHR"]),
        egp: json["EGP"] == null ? null : Aed.fromJson(json["EGP"]),
        uyu: json["UYU"] == null ? null : Aed.fromJson(json["UYU"]),
        gtq: json["GTQ"] == null ? null : Aed.fromJson(json["GTQ"]),
        xof: json["XOF"] == null ? null : Aed.fromJson(json["XOF"]),
        shp: json["SHP"] == null ? null : Aed.fromJson(json["SHP"]),
        qar: json["QAR"] == null ? null : Aed.fromJson(json["QAR"]),
        npr: json["NPR"] == null ? null : Aed.fromJson(json["NPR"]),
        bob: json["BOB"] == null ? null : Aed.fromJson(json["BOB"]),
        chf: json["CHF"] == null ? null : Aed.fromJson(json["CHF"]),
        aed: json["AED"] == null ? null : Aed.fromJson(json["AED"]),
        cad: json["CAD"] == null ? null : Aed.fromJson(json["CAD"]),
        gbp: json["GBP"] == null ? null : Aed.fromJson(json["GBP"]),
        brl: json["BRL"] == null ? null : Aed.fromJson(json["BRL"]),
        bwp: json["BWP"] == null ? null : Aed.fromJson(json["BWP"]),
        krw: json["KRW"] == null ? null : Aed.fromJson(json["KRW"]),
        sgd: json["SGD"] == null ? null : Aed.fromJson(json["SGD"]),
        mvr: json["MVR"] == null ? null : Aed.fromJson(json["MVR"]),
        ghs: json["GHS"] == null ? null : Aed.fromJson(json["GHS"]),
        amd: json["AMD"] == null ? null : Aed.fromJson(json["AMD"]),
        kmf: json["KMF"] == null ? null : Aed.fromJson(json["KMF"]),
        ils: json["ILS"] == null ? null : Aed.fromJson(json["ILS"]),
        gyd: json["GYD"] == null ? null : Aed.fromJson(json["GYD"]),
        syp: json["SYP"] == null ? null : Aed.fromJson(json["SYP"]),
        tvd: json["TVD"] == null ? null : Aed.fromJson(json["TVD"]),
        nok: json["NOK"] == null ? null : Aed.fromJson(json["NOK"]),
        twd: json["TWD"] == null ? null : Aed.fromJson(json["TWD"]),
        ars: json["ARS"] == null ? null : Aed.fromJson(json["ARS"]),
        cdf: json["CDF"] == null ? null : Aed.fromJson(json["CDF"]),
        ves: json["VES"] == null ? null : Aed.fromJson(json["VES"]),
        mad: json["MAD"] == null ? null : Aed.fromJson(json["MAD"]),
        awg: json["AWG"] == null ? null : Aed.fromJson(json["AWG"]),
        lak: json["LAK"] == null ? null : Aed.fromJson(json["LAK"]),
        bzd: json["BZD"] == null ? null : Aed.fromJson(json["BZD"]),
        bmd: json["BMD"] == null ? null : Aed.fromJson(json["BMD"]),
        sdg: json["SDG"] == null ? null : Bam.fromJson(json["SDG"]),
        gmd: json["GMD"] == null ? null : Aed.fromJson(json["GMD"]),
        clp: json["CLP"] == null ? null : Aed.fromJson(json["CLP"]),
        dkk: json["DKK"] == null ? null : Aed.fromJson(json["DKK"]),
        lkr: json["LKR"] == null ? null : Aed.fromJson(json["LKR"]),
        xpf: json["XPF"] == null ? null : Aed.fromJson(json["XPF"]),
        ggp: json["GGP"] == null ? null : Aed.fromJson(json["GGP"]),
        cop: json["COP"] == null ? null : Aed.fromJson(json["COP"]),
        mzn: json["MZN"] == null ? null : Aed.fromJson(json["MZN"]),
        lrd: json["LRD"] == null ? null : Aed.fromJson(json["LRD"]),
        rwf: json["RWF"] == null ? null : Aed.fromJson(json["RWF"]),
        mur: json["MUR"] == null ? null : Aed.fromJson(json["MUR"]),
        azn: json["AZN"] == null ? null : Aed.fromJson(json["AZN"]),
        vuv: json["VUV"] == null ? null : Aed.fromJson(json["VUV"]),
        tjs: json["TJS"] == null ? null : Aed.fromJson(json["TJS"]),
        srd: json["SRD"] == null ? null : Aed.fromJson(json["SRD"]),
        aoa: json["AOA"] == null ? null : Aed.fromJson(json["AOA"]),
        pln: json["PLN"] == null ? null : Aed.fromJson(json["PLN"]),
        sll: json["SLL"] == null ? null : Aed.fromJson(json["SLL"]),
        rub: json["RUB"] == null ? null : Aed.fromJson(json["RUB"]),
        btn: json["BTN"] == null ? null : Aed.fromJson(json["BTN"]),
        mdl: json["MDL"] == null ? null : Aed.fromJson(json["MDL"]),
        imp: json["IMP"] == null ? null : Aed.fromJson(json["IMP"]),
        pkr: json["PKR"] == null ? null : Aed.fromJson(json["PKR"]),
        jmd: json["JMD"] == null ? null : Aed.fromJson(json["JMD"]),
        ron: json["RON"] == null ? null : Aed.fromJson(json["RON"]),
        iqd: json["IQD"] == null ? null : Aed.fromJson(json["IQD"]),
        byn: json["BYN"] == null ? null : Aed.fromJson(json["BYN"]),
        rsd: json["RSD"] == null ? null : Aed.fromJson(json["RSD"]),
        nad: json["NAD"] == null ? null : Aed.fromJson(json["NAD"]),
        mop: json["MOP"] == null ? null : Aed.fromJson(json["MOP"]),
        kes: json["KES"] == null ? null : Aed.fromJson(json["KES"]),
        ugx: json["UGX"] == null ? null : Aed.fromJson(json["UGX"]),
        all: json["ALL"] == null ? null : Aed.fromJson(json["ALL"]),
        tmt: json["TMT"] == null ? null : Aed.fromJson(json["TMT"]),
        tnd: json["TND"] == null ? null : Aed.fromJson(json["TND"]),
        sar: json["SAR"] == null ? null : Aed.fromJson(json["SAR"]),
        bsd: json["BSD"] == null ? null : Aed.fromJson(json["BSD"]),
        dop: json["DOP"] == null ? null : Aed.fromJson(json["DOP"]),
        vnd: json["VND"] == null ? null : Aed.fromJson(json["VND"]),
        irr: json["IRR"] == null ? null : Aed.fromJson(json["IRR"]),
        tzs: json["TZS"] == null ? null : Aed.fromJson(json["TZS"]),
        bdt: json["BDT"] == null ? null : Aed.fromJson(json["BDT"]),
        jpy: json["JPY"] == null ? null : Aed.fromJson(json["JPY"]),
        kwd: json["KWD"] == null ? null : Aed.fromJson(json["KWD"]),
        hrk: json["HRK"] == null ? null : Aed.fromJson(json["HRK"]),
        fok: json["FOK"] == null ? null : Aed.fromJson(json["FOK"]),
        hnl: json["HNL"] == null ? null : Aed.fromJson(json["HNL"]),
        pab: json["PAB"] == null ? null : Aed.fromJson(json["PAB"]),
        fkp: json["FKP"] == null ? null : Aed.fromJson(json["FKP"]),
        currenciesTry: json["TRY"] == null ? null : Aed.fromJson(json["TRY"]),
        crc: json["CRC"] == null ? null : Aed.fromJson(json["CRC"]),
        lyd: json["LYD"] == null ? null : Aed.fromJson(json["LYD"]),
        php: json["PHP"] == null ? null : Aed.fromJson(json["PHP"]),
        ckd: json["CKD"] == null ? null : Aed.fromJson(json["CKD"]),
        nio: json["NIO"] == null ? null : Aed.fromJson(json["NIO"]),
        bgn: json["BGN"] == null ? null : Aed.fromJson(json["BGN"]),
        huf: json["HUF"] == null ? null : Aed.fromJson(json["HUF"]),
        djf: json["DJF"] == null ? null : Aed.fromJson(json["DJF"]),
        bnd: json["BND"] == null ? null : Aed.fromJson(json["BND"]),
        kzt: json["KZT"] == null ? null : Aed.fromJson(json["KZT"]),
        kid: json["KID"] == null ? null : Aed.fromJson(json["KID"]),
        jep: json["JEP"] == null ? null : Aed.fromJson(json["JEP"]),
        top: json["TOP"] == null ? null : Aed.fromJson(json["TOP"]),
        mga: json["MGA"] == null ? null : Aed.fromJson(json["MGA"]),
        kpw: json["KPW"] == null ? null : Aed.fromJson(json["KPW"]),
        szl: json["SZL"] == null ? null : Aed.fromJson(json["SZL"]),
        sek: json["SEK"] == null ? null : Aed.fromJson(json["SEK"]),
        ngn: json["NGN"] == null ? null : Aed.fromJson(json["NGN"]),
        ttd: json["TTD"] == null ? null : Aed.fromJson(json["TTD"]),
      );

  Map<String, dynamic> toJson() => {
        "PGK": pgk == null ? null : pgk!.toJson(),
        "EUR": eur == null ? null : eur!.toJson(),
        "MKD": mkd == null ? null : mkd!.toJson(),
        "NZD": nzd == null ? null : nzd!.toJson(),
        "CNY": cny == null ? null : cny!.toJson(),
        "LSL": lsl == null ? null : lsl!.toJson(),
        "ZAR": zar == null ? null : zar!.toJson(),
        "ANG": ang == null ? null : ang!.toJson(),
        "MXN": mxn == null ? null : mxn!.toJson(),
        "HTG": htg == null ? null : htg!.toJson(),
        "THB": thb == null ? null : thb!.toJson(),
        "USD": usd == null ? null : usd!.toJson(),
        "MYR": myr == null ? null : myr!.toJson(),
        "WST": wst == null ? null : wst!.toJson(),
        "LBP": lbp == null ? null : lbp!.toJson(),
        "CUC": cuc == null ? null : cuc!.toJson(),
        "CUP": cup == null ? null : cup!.toJson(),
        "XCD": xcd == null ? null : xcd!.toJson(),
        "ISK": isk == null ? null : isk!.toJson(),
        "AFN": afn == null ? null : afn!.toJson(),
        "ERN": ern == null ? null : ern!.toJson(),
        "INR": inr == null ? null : inr!.toJson(),
        "PYG": pyg == null ? null : pyg!.toJson(),
        "UAH": uah == null ? null : uah!.toJson(),
        "SCR": scr == null ? null : scr!.toJson(),
        "KYD": kyd == null ? null : kyd!.toJson(),
        "DZD": dzd == null ? null : dzd!.toJson(),
        "GNF": gnf == null ? null : gnf!.toJson(),
        "ZMW": zmw == null ? null : zmw!.toJson(),
        "BHD": bhd == null ? null : bhd!.toJson(),
        "MMK": mmk == null ? null : mmk!.toJson(),
        "ETB": etb == null ? null : etb!.toJson(),
        "SSP": ssp == null ? null : ssp!.toJson(),
        "AUD": aud == null ? null : aud!.toJson(),
        "MWK": mwk == null ? null : mwk!.toJson(),
        "JOD": jod == null ? null : jod!.toJson(),
        "BBD": bbd == null ? null : bbd!.toJson(),
        "IDR": idr == null ? null : idr!.toJson(),
        "KGS": kgs == null ? null : kgs!.toJson(),
        "XAF": xaf == null ? null : xaf!.toJson(),
        "BAM": bam == null ? null : bam!.toJson(),
        "CZK": czk == null ? null : czk!.toJson(),
        "FJD": fjd == null ? null : fjd!.toJson(),
        "SOS": sos == null ? null : sos!.toJson(),
        "GEL": gel == null ? null : gel!.toJson(),
        "ZWL": zwl == null ? null : zwl!.toJson(),
        "SBD": sbd == null ? null : sbd!.toJson(),
        "GIP": gip == null ? null : gip!.toJson(),
        "OMR": omr == null ? null : omr!.toJson(),
        "MRU": mru == null ? null : mru!.toJson(),
        "HKD": hkd == null ? null : hkd!.toJson(),
        "CVE": cve == null ? null : cve!.toJson(),
        "PEN": pen == null ? null : pen!.toJson(),
        "YER": yer == null ? null : yer!.toJson(),
        "MNT": mnt == null ? null : mnt!.toJson(),
        "STN": stn == null ? null : stn!.toJson(),
        "UZS": uzs == null ? null : uzs!.toJson(),
        "BIF": bif == null ? null : bif!.toJson(),
        "KHR": khr == null ? null : khr!.toJson(),
        "EGP": egp == null ? null : egp!.toJson(),
        "UYU": uyu == null ? null : uyu!.toJson(),
        "GTQ": gtq == null ? null : gtq!.toJson(),
        "XOF": xof == null ? null : xof!.toJson(),
        "SHP": shp == null ? null : shp!.toJson(),
        "QAR": qar == null ? null : qar!.toJson(),
        "NPR": npr == null ? null : npr!.toJson(),
        "BOB": bob == null ? null : bob!.toJson(),
        "CHF": chf == null ? null : chf!.toJson(),
        "AED": aed == null ? null : aed!.toJson(),
        "CAD": cad == null ? null : cad!.toJson(),
        "GBP": gbp == null ? null : gbp!.toJson(),
        "BRL": brl == null ? null : brl!.toJson(),
        "BWP": bwp == null ? null : bwp!.toJson(),
        "KRW": krw == null ? null : krw!.toJson(),
        "SGD": sgd == null ? null : sgd!.toJson(),
        "MVR": mvr == null ? null : mvr!.toJson(),
        "GHS": ghs == null ? null : ghs!.toJson(),
        "AMD": amd == null ? null : amd!.toJson(),
        "KMF": kmf == null ? null : kmf!.toJson(),
        "ILS": ils == null ? null : ils!.toJson(),
        "GYD": gyd == null ? null : gyd!.toJson(),
        "SYP": syp == null ? null : syp!.toJson(),
        "TVD": tvd == null ? null : tvd!.toJson(),
        "NOK": nok == null ? null : nok!.toJson(),
        "TWD": twd == null ? null : twd!.toJson(),
        "ARS": ars == null ? null : ars!.toJson(),
        "CDF": cdf == null ? null : cdf!.toJson(),
        "VES": ves == null ? null : ves!.toJson(),
        "MAD": mad == null ? null : mad!.toJson(),
        "AWG": awg == null ? null : awg!.toJson(),
        "LAK": lak == null ? null : lak!.toJson(),
        "BZD": bzd == null ? null : bzd!.toJson(),
        "BMD": bmd == null ? null : bmd!.toJson(),
        "SDG": sdg == null ? null : sdg!.toJson(),
        "GMD": gmd == null ? null : gmd!.toJson(),
        "CLP": clp == null ? null : clp!.toJson(),
        "DKK": dkk == null ? null : dkk!.toJson(),
        "LKR": lkr == null ? null : lkr!.toJson(),
        "XPF": xpf == null ? null : xpf!.toJson(),
        "GGP": ggp == null ? null : ggp!.toJson(),
        "COP": cop == null ? null : cop!.toJson(),
        "MZN": mzn == null ? null : mzn!.toJson(),
        "LRD": lrd == null ? null : lrd!.toJson(),
        "RWF": rwf == null ? null : rwf!.toJson(),
        "MUR": mur == null ? null : mur!.toJson(),
        "AZN": azn == null ? null : azn!.toJson(),
        "VUV": vuv == null ? null : vuv!.toJson(),
        "TJS": tjs == null ? null : tjs!.toJson(),
        "SRD": srd == null ? null : srd!.toJson(),
        "AOA": aoa == null ? null : aoa!.toJson(),
        "PLN": pln == null ? null : pln!.toJson(),
        "SLL": sll == null ? null : sll!.toJson(),
        "RUB": rub == null ? null : rub!.toJson(),
        "BTN": btn == null ? null : btn!.toJson(),
        "MDL": mdl == null ? null : mdl!.toJson(),
        "IMP": imp == null ? null : imp!.toJson(),
        "PKR": pkr == null ? null : pkr!.toJson(),
        "JMD": jmd == null ? null : jmd!.toJson(),
        "RON": ron == null ? null : ron!.toJson(),
        "IQD": iqd == null ? null : iqd!.toJson(),
        "BYN": byn == null ? null : byn!.toJson(),
        "RSD": rsd == null ? null : rsd!.toJson(),
        "NAD": nad == null ? null : nad!.toJson(),
        "MOP": mop == null ? null : mop!.toJson(),
        "KES": kes == null ? null : kes!.toJson(),
        "UGX": ugx == null ? null : ugx!.toJson(),
        "ALL": all == null ? null : all!.toJson(),
        "TMT": tmt == null ? null : tmt!.toJson(),
        "TND": tnd == null ? null : tnd!.toJson(),
        "SAR": sar == null ? null : sar!.toJson(),
        "BSD": bsd == null ? null : bsd!.toJson(),
        "DOP": dop == null ? null : dop!.toJson(),
        "VND": vnd == null ? null : vnd!.toJson(),
        "IRR": irr == null ? null : irr!.toJson(),
        "TZS": tzs == null ? null : tzs!.toJson(),
        "BDT": bdt == null ? null : bdt!.toJson(),
        "JPY": jpy == null ? null : jpy!.toJson(),
        "KWD": kwd == null ? null : kwd!.toJson(),
        "HRK": hrk == null ? null : hrk!.toJson(),
        "FOK": fok == null ? null : fok!.toJson(),
        "HNL": hnl == null ? null : hnl!.toJson(),
        "PAB": pab == null ? null : pab!.toJson(),
        "FKP": fkp == null ? null : fkp!.toJson(),
        "TRY": currenciesTry == null ? null : currenciesTry!.toJson(),
        "CRC": crc == null ? null : crc!.toJson(),
        "LYD": lyd == null ? null : lyd!.toJson(),
        "PHP": php == null ? null : php!.toJson(),
        "CKD": ckd == null ? null : ckd!.toJson(),
        "NIO": nio == null ? null : nio!.toJson(),
        "BGN": bgn == null ? null : bgn!.toJson(),
        "HUF": huf == null ? null : huf!.toJson(),
        "DJF": djf == null ? null : djf!.toJson(),
        "BND": bnd == null ? null : bnd!.toJson(),
        "KZT": kzt == null ? null : kzt!.toJson(),
        "KID": kid == null ? null : kid!.toJson(),
        "JEP": jep == null ? null : jep!.toJson(),
        "TOP": top == null ? null : top!.toJson(),
        "MGA": mga == null ? null : mga!.toJson(),
        "KPW": kpw == null ? null : kpw!.toJson(),
        "SZL": szl == null ? null : szl!.toJson(),
        "SEK": sek == null ? null : sek!.toJson(),
        "NGN": ngn == null ? null : ngn!.toJson(),
        "TTD": ttd == null ? null : ttd!.toJson(),
      };
}

class Aed {
  Aed({
    this.name,
    this.symbol,
  });

  String? name;
  String? symbol;

  factory Aed.fromJson(Map<String, dynamic> json) => Aed(
        name: json["name"],
        symbol: json["symbol"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "symbol": symbol,
      };
}

class Bam {
  Bam({
    this.name,
  });

  String? name;

  factory Bam.fromJson(Map<String, dynamic> json) => Bam(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}

class Demonyms {
  Demonyms({
    this.eng,
    this.fra,
  });

  Eng? eng;
  Eng? fra;

  factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
        eng: Eng.fromJson(json["eng"]),
        fra: json["fra"],
      );

  Map<String, dynamic> toJson() => {
        "eng": eng!.toJson(),
        "fra": fra == null ? null : fra!.toJson(),
      };
}

class Eng {
  Eng({
    this.f,
    this.m,
  });

  String? f;
  String? m;

  factory Eng.fromJson(Map<String, dynamic> json) => Eng(
        f: json["f"],
        m: json["m"],
      );

  Map<String, dynamic> toJson() => {
        "f": f,
        "m": m,
      };
}

class Idd {
  Idd({
    this.root,
    this.suffixes,
  });

  String? root;
  List<String>? suffixes;

  factory Idd.fromJson(Map<String, dynamic> json) => Idd(
        root: json["root"] == null ? null : json["root"],
        suffixes: json["suffixes"] == null
            ? null
            : List<String>.from(json["suffixes"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "root": root == null ? null : root,
        "suffixes": suffixes == null
            ? null
            : List<dynamic>.from(suffixes!.map((x) => x)),
      };
}

class Maps {
  Maps({
    this.googleMaps,
    this.openStreetMaps,
  });

  String? googleMaps;
  String? openStreetMaps;

  factory Maps.fromJson(Map<String, dynamic> json) => Maps(
        googleMaps: json["googleMaps"],
        openStreetMaps: json["openStreetMaps"],
      );

  Map<String, dynamic> toJson() => {
        "googleMaps": googleMaps,
        "openStreetMaps": openStreetMaps,
      };
}

class Name {
  Name({
    this.common,
    this.official,
    this.nativeName,
  });

  String? common;
  String? official;
  Map<String, Translation>? nativeName;

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        common: json["common"],
        official: json["official"],
        nativeName: json["nativeName"] == null
            ? null
            : Map.from(json["nativeName"]).map((k, v) =>
                MapEntry<String, Translation>(k, Translation.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "common": common,
        "official": official,
        "nativeName": nativeName == null
            ? null
            : Map.from(nativeName!)
                .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class Translation {
  Translation({
    this.official,
    this.common,
  });

  String? official;
  String? common;

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
        official: json["official"],
        common: json["common"],
      );

  Map<String, dynamic> toJson() => {
        "official": official,
        "common": common,
      };
}

class PostalCode {
  PostalCode({
    this.format,
    this.regex,
  });

  String? format;
  String? regex;

  factory PostalCode.fromJson(Map<String, dynamic> json) => PostalCode(
        format: json["format"],
        regex: json["regex"] == null ? null : json["regex"],
      );

  Map<String, dynamic> toJson() => {
        "format": format,
        "regex": regex == null ? null : regex,
      };
}

enum Region { OCEANIA, ANTARCTIC, AMERICAS, EUROPE, ASIA, AFRICA }

final regionValues = EnumValues({
  "Africa": Region.AFRICA,
  "Americas": Region.AMERICAS,
  "Antarctic": Region.ANTARCTIC,
  "Asia": Region.ASIA,
  "Europe": Region.EUROPE,
  "Oceania": Region.OCEANIA
});

enum StartOfWeek { MONDAY, SUNDAY, TURDAY }

final startOfWeekValues = EnumValues({
  "monday": StartOfWeek.MONDAY,
  "sunday": StartOfWeek.SUNDAY,
  "turday": StartOfWeek.TURDAY
});

enum Status { OFFICIALLY_ASSIGNED, USER_ASSIGNED }

final statusValues = EnumValues({
  "officially-assigned": Status.OFFICIALLY_ASSIGNED,
  "user-assigned": Status.USER_ASSIGNED
});

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map!.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
