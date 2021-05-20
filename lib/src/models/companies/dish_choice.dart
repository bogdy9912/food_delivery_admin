part of companies_models;

abstract class DishChoice implements Built<DishChoice, DishChoiceBuilder> {
  factory DishChoice([void Function(DishChoiceBuilder b) updates]) = _$DishChoice;
  factory DishChoice.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  DishChoice._();

  String get name;

  BuiltList<String> get options;

  int get min;

  int get max;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<DishChoice> get serializer => _$dishChoiceSerializer;
}