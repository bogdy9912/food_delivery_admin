part of auth_models;

abstract class RegistrationInfo implements Built<RegistrationInfo, RegistrationInfoBuilder> {
  factory RegistrationInfo([void Function(RegistrationInfoBuilder b) updates]) = _$RegistrationInfo;

  factory RegistrationInfo.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  RegistrationInfo._();

  String? get email;

  String? get password;

  String? get firstName;

  String? get lastName;

  String? get companyName;

  String? get companyId;

  String? get image;

  String? get openHour;

  String? get closeHour;

  String? get city;

  BuiltList<PaymentMethod> get paymentMethods;

  BuiltList<DeliveryOption> get deliveryOptions;

  String? get address;

  double? get deliveryFee;

  double? get deliveryThreshold;

  double? get deliveryFeeThreshold;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<RegistrationInfo> get serializer => _$registrationInfoSerializer;
}
