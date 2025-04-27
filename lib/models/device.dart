import 'package:json_annotation/json_annotation.dart';

part 'device.g.dart';

@JsonSerializable()
class Device {
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "data")
  final List<Datum>? data;

  Device({this.status, this.data});

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceToJson(this);
}

@JsonSerializable()
class Datum {
  @JsonKey(name: "_id")
  final String? id;
  @JsonKey(name: "ProductName")
  final String? productName;
  @JsonKey(name: "ProductCode")
  final String? productCode;
  @JsonKey(name: "Img")
  final String? img;
  @JsonKey(name: "UnitPrice")
  final String? unitPrice;
  @JsonKey(name: "Qty")
  final String? qty;
  @JsonKey(name: "TotalPrice")
  final String? totalPrice;
  @JsonKey(name: "CreatedDate")
  final String? createdDate;

  Datum({
    this.id,
    this.productName,
    this.productCode,
    this.img,
    this.unitPrice,
    this.qty,
    this.totalPrice,
    this.createdDate,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
