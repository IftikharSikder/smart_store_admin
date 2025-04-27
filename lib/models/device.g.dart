// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Device _$DeviceFromJson(Map<String, dynamic> json) => Device(
  status: json['status'] as String?,
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$DeviceToJson(Device instance) => <String, dynamic>{
  'status': instance.status,
  'data': instance.data,
};

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
  id: json['_id'] as String?,
  productName: json['ProductName'] as String?,
  productCode: json['ProductCode'] as String?,
  img: json['Img'] as String?,
  unitPrice: json['UnitPrice'] as String?,
  qty: json['Qty'] as String?,
  totalPrice: json['TotalPrice'] as String?,
  createdDate: json['CreatedDate'] as String?,
);

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
  '_id': instance.id,
  'ProductName': instance.productName,
  'ProductCode': instance.productCode,
  'Img': instance.img,
  'UnitPrice': instance.unitPrice,
  'Qty': instance.qty,
  'TotalPrice': instance.totalPrice,
  'CreatedDate': instance.createdDate,
};
