// GENERATED CODE - DO NOT MODIFY BY HAND

part of orders_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PaymentMethod _$card = const PaymentMethod._('card');
const PaymentMethod _$cash = const PaymentMethod._('cash');

PaymentMethod _$valueOf(String name) {
  switch (name) {
    case 'card':
      return _$card;
    case 'cash':
      return _$cash;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PaymentMethod> _$values =
    new BuiltSet<PaymentMethod>(const <PaymentMethod>[
  _$card,
  _$cash,
]);

Serializer<PaymentMethod> _$paymentMethodSerializer =
    new _$PaymentMethodSerializer();

class _$PaymentMethodSerializer implements PrimitiveSerializer<PaymentMethod> {
  @override
  final Iterable<Type> types = const <Type>[PaymentMethod];
  @override
  final String wireName = 'PaymentMethod';

  @override
  Object serialize(Serializers serializers, PaymentMethod object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  PaymentMethod deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PaymentMethod.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
