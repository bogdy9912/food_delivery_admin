part of auth_actions;

@freezed
class UpdateRegistrationInfo
    with _$UpdateRegistrationInfo
    implements AppAction {
  const factory UpdateRegistrationInfo({
    String? email,
    String? password,
    String? firstName,
    String? lastName,
    String? companyName,
    String? image,
    String? openHour,
    String? closeHour,
    String? city,
    BuiltList<PaymentMethod>? paymentMethods,
    BuiltList<DeliveryOption>? deliveryOptions,
    String? address,
    double? deliveryFee,
    double? deliveryThreshold,
    double? deliveryFeeThreshold,
  }) = UpdateRegistrationInfo$;
}
