// GENERATED CODE - DO NOT MODIFY BY HAND

part of companies_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeliveryOption _$home = const DeliveryOption._('home');
const DeliveryOption _$pickup = const DeliveryOption._('pickup');

DeliveryOption _$valueOf(String name) {
  switch (name) {
    case 'home':
      return _$home;
    case 'pickup':
      return _$pickup;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<DeliveryOption> _$values =
    new BuiltSet<DeliveryOption>(const <DeliveryOption>[
  _$home,
  _$pickup,
]);

Serializer<Company> _$companySerializer = new _$CompanySerializer();
Serializer<DeliveryOption> _$deliveryOptionSerializer =
    new _$DeliveryOptionSerializer();

class _$CompanySerializer implements StructuredSerializer<Company> {
  @override
  final Iterable<Type> types = const [Company, _$Company];
  @override
  final String wireName = 'Company';

  @override
  Iterable<Object?> serialize(Serializers serializers, Company object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'rating',
      serializers.serialize(object.rating,
          specifiedType: const FullType(double)),
      'openHour',
      serializers.serialize(object.openHour,
          specifiedType: const FullType(String)),
      'closeHour',
      serializers.serialize(object.closeHour,
          specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
      'paymentMethods',
      serializers.serialize(object.paymentMethods,
          specifiedType:
              const FullType(BuiltList, const [const FullType(PaymentMethod)])),
      'deliveryOptions',
      serializers.serialize(object.deliveryOptions,
          specifiedType: const FullType(
              BuiltList, const [const FullType(DeliveryOption)])),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'searchIndex',
      serializers.serialize(object.searchIndex,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    Object? value;
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.deliveryFee;
    if (value != null) {
      result
        ..add('deliveryFee')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.deliveryThreshold;
    if (value != null) {
      result
        ..add('deliveryThreshold')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.deliveryFeeThreshold;
    if (value != null) {
      result
        ..add('deliveryFeeThreshold')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Company deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompanyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'openHour':
          result.openHour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'closeHour':
          result.closeHour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'paymentMethods':
          result.paymentMethods.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PaymentMethod)]))!
              as BuiltList<Object>);
          break;
        case 'deliveryOptions':
          result.deliveryOptions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DeliveryOption)]))!
              as BuiltList<Object>);
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'deliveryFee':
          result.deliveryFee = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'deliveryThreshold':
          result.deliveryThreshold = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'deliveryFeeThreshold':
          result.deliveryFeeThreshold = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'searchIndex':
          result.searchIndex.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$DeliveryOptionSerializer
    implements PrimitiveSerializer<DeliveryOption> {
  @override
  final Iterable<Type> types = const <Type>[DeliveryOption];
  @override
  final String wireName = 'DeliveryOption';

  @override
  Object serialize(Serializers serializers, DeliveryOption object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  DeliveryOption deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DeliveryOption.valueOf(serialized as String);
}

class _$Company extends Company {
  @override
  final String id;
  @override
  final String name;
  @override
  final double rating;
  @override
  final String? image;
  @override
  final String openHour;
  @override
  final String closeHour;
  @override
  final String city;
  @override
  final BuiltList<PaymentMethod> paymentMethods;
  @override
  final BuiltList<DeliveryOption> deliveryOptions;
  @override
  final String address;
  @override
  final double? deliveryFee;
  @override
  final double? deliveryThreshold;
  @override
  final double? deliveryFeeThreshold;
  @override
  final BuiltList<String> searchIndex;

  factory _$Company([void Function(CompanyBuilder)? updates]) =>
      (new CompanyBuilder()..update(updates)).build();

  _$Company._(
      {required this.id,
      required this.name,
      required this.rating,
      this.image,
      required this.openHour,
      required this.closeHour,
      required this.city,
      required this.paymentMethods,
      required this.deliveryOptions,
      required this.address,
      this.deliveryFee,
      this.deliveryThreshold,
      this.deliveryFeeThreshold,
      required this.searchIndex})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Company', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'Company', 'name');
    BuiltValueNullFieldError.checkNotNull(rating, 'Company', 'rating');
    BuiltValueNullFieldError.checkNotNull(openHour, 'Company', 'openHour');
    BuiltValueNullFieldError.checkNotNull(closeHour, 'Company', 'closeHour');
    BuiltValueNullFieldError.checkNotNull(city, 'Company', 'city');
    BuiltValueNullFieldError.checkNotNull(
        paymentMethods, 'Company', 'paymentMethods');
    BuiltValueNullFieldError.checkNotNull(
        deliveryOptions, 'Company', 'deliveryOptions');
    BuiltValueNullFieldError.checkNotNull(address, 'Company', 'address');
    BuiltValueNullFieldError.checkNotNull(
        searchIndex, 'Company', 'searchIndex');
  }

  @override
  Company rebuild(void Function(CompanyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyBuilder toBuilder() => new CompanyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Company &&
        id == other.id &&
        name == other.name &&
        rating == other.rating &&
        image == other.image &&
        openHour == other.openHour &&
        closeHour == other.closeHour &&
        city == other.city &&
        paymentMethods == other.paymentMethods &&
        deliveryOptions == other.deliveryOptions &&
        address == other.address &&
        deliveryFee == other.deliveryFee &&
        deliveryThreshold == other.deliveryThreshold &&
        deliveryFeeThreshold == other.deliveryFeeThreshold &&
        searchIndex == other.searchIndex;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc($jc(0, id.hashCode),
                                                        name.hashCode),
                                                    rating.hashCode),
                                                image.hashCode),
                                            openHour.hashCode),
                                        closeHour.hashCode),
                                    city.hashCode),
                                paymentMethods.hashCode),
                            deliveryOptions.hashCode),
                        address.hashCode),
                    deliveryFee.hashCode),
                deliveryThreshold.hashCode),
            deliveryFeeThreshold.hashCode),
        searchIndex.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Company')
          ..add('id', id)
          ..add('name', name)
          ..add('rating', rating)
          ..add('image', image)
          ..add('openHour', openHour)
          ..add('closeHour', closeHour)
          ..add('city', city)
          ..add('paymentMethods', paymentMethods)
          ..add('deliveryOptions', deliveryOptions)
          ..add('address', address)
          ..add('deliveryFee', deliveryFee)
          ..add('deliveryThreshold', deliveryThreshold)
          ..add('deliveryFeeThreshold', deliveryFeeThreshold)
          ..add('searchIndex', searchIndex))
        .toString();
  }
}

class CompanyBuilder implements Builder<Company, CompanyBuilder> {
  _$Company? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _rating;
  double? get rating => _$this._rating;
  set rating(double? rating) => _$this._rating = rating;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _openHour;
  String? get openHour => _$this._openHour;
  set openHour(String? openHour) => _$this._openHour = openHour;

  String? _closeHour;
  String? get closeHour => _$this._closeHour;
  set closeHour(String? closeHour) => _$this._closeHour = closeHour;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  ListBuilder<PaymentMethod>? _paymentMethods;
  ListBuilder<PaymentMethod> get paymentMethods =>
      _$this._paymentMethods ??= new ListBuilder<PaymentMethod>();
  set paymentMethods(ListBuilder<PaymentMethod>? paymentMethods) =>
      _$this._paymentMethods = paymentMethods;

  ListBuilder<DeliveryOption>? _deliveryOptions;
  ListBuilder<DeliveryOption> get deliveryOptions =>
      _$this._deliveryOptions ??= new ListBuilder<DeliveryOption>();
  set deliveryOptions(ListBuilder<DeliveryOption>? deliveryOptions) =>
      _$this._deliveryOptions = deliveryOptions;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  double? _deliveryFee;
  double? get deliveryFee => _$this._deliveryFee;
  set deliveryFee(double? deliveryFee) => _$this._deliveryFee = deliveryFee;

  double? _deliveryThreshold;
  double? get deliveryThreshold => _$this._deliveryThreshold;
  set deliveryThreshold(double? deliveryThreshold) =>
      _$this._deliveryThreshold = deliveryThreshold;

  double? _deliveryFeeThreshold;
  double? get deliveryFeeThreshold => _$this._deliveryFeeThreshold;
  set deliveryFeeThreshold(double? deliveryFeeThreshold) =>
      _$this._deliveryFeeThreshold = deliveryFeeThreshold;

  ListBuilder<String>? _searchIndex;
  ListBuilder<String> get searchIndex =>
      _$this._searchIndex ??= new ListBuilder<String>();
  set searchIndex(ListBuilder<String>? searchIndex) =>
      _$this._searchIndex = searchIndex;

  CompanyBuilder();

  CompanyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _rating = $v.rating;
      _image = $v.image;
      _openHour = $v.openHour;
      _closeHour = $v.closeHour;
      _city = $v.city;
      _paymentMethods = $v.paymentMethods.toBuilder();
      _deliveryOptions = $v.deliveryOptions.toBuilder();
      _address = $v.address;
      _deliveryFee = $v.deliveryFee;
      _deliveryThreshold = $v.deliveryThreshold;
      _deliveryFeeThreshold = $v.deliveryFeeThreshold;
      _searchIndex = $v.searchIndex.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Company other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Company;
  }

  @override
  void update(void Function(CompanyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Company build() {
    _$Company _$result;
    try {
      _$result = _$v ??
          new _$Company._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Company', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'Company', 'name'),
              rating: BuiltValueNullFieldError.checkNotNull(
                  rating, 'Company', 'rating'),
              image: image,
              openHour: BuiltValueNullFieldError.checkNotNull(
                  openHour, 'Company', 'openHour'),
              closeHour: BuiltValueNullFieldError.checkNotNull(
                  closeHour, 'Company', 'closeHour'),
              city: BuiltValueNullFieldError.checkNotNull(
                  city, 'Company', 'city'),
              paymentMethods: paymentMethods.build(),
              deliveryOptions: deliveryOptions.build(),
              address: BuiltValueNullFieldError.checkNotNull(
                  address, 'Company', 'address'),
              deliveryFee: deliveryFee,
              deliveryThreshold: deliveryThreshold,
              deliveryFeeThreshold: deliveryFeeThreshold,
              searchIndex: searchIndex.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'paymentMethods';
        paymentMethods.build();
        _$failedField = 'deliveryOptions';
        deliveryOptions.build();

        _$failedField = 'searchIndex';
        searchIndex.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Company', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
