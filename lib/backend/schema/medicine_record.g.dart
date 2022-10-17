// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MedicineRecord> _$medicineRecordSerializer =
    new _$MedicineRecordSerializer();

class _$MedicineRecordSerializer
    implements StructuredSerializer<MedicineRecord> {
  @override
  final Iterable<Type> types = const [MedicineRecord, _$MedicineRecord];
  @override
  final String wireName = 'MedicineRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MedicineRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.uniqueID;
    if (value != null) {
      result
        ..add('uniqueID')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.drugName;
    if (value != null) {
      result
        ..add('drugName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.condition;
    if (value != null) {
      result
        ..add('condition')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.review;
    if (value != null) {
      result
        ..add('review')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  MedicineRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MedicineRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uniqueID':
          result.uniqueID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'drugName':
          result.drugName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'condition':
          result.condition = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'review':
          result.review = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$MedicineRecord extends MedicineRecord {
  @override
  final int? uniqueID;
  @override
  final String? drugName;
  @override
  final String? condition;
  @override
  final String? review;
  @override
  final int? rating;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MedicineRecord([void Function(MedicineRecordBuilder)? updates]) =>
      (new MedicineRecordBuilder()..update(updates))._build();

  _$MedicineRecord._(
      {this.uniqueID,
      this.drugName,
      this.condition,
      this.review,
      this.rating,
      this.ffRef})
      : super._();

  @override
  MedicineRecord rebuild(void Function(MedicineRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MedicineRecordBuilder toBuilder() =>
      new MedicineRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MedicineRecord &&
        uniqueID == other.uniqueID &&
        drugName == other.drugName &&
        condition == other.condition &&
        review == other.review &&
        rating == other.rating &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, uniqueID.hashCode), drugName.hashCode),
                    condition.hashCode),
                review.hashCode),
            rating.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MedicineRecord')
          ..add('uniqueID', uniqueID)
          ..add('drugName', drugName)
          ..add('condition', condition)
          ..add('review', review)
          ..add('rating', rating)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MedicineRecordBuilder
    implements Builder<MedicineRecord, MedicineRecordBuilder> {
  _$MedicineRecord? _$v;

  int? _uniqueID;
  int? get uniqueID => _$this._uniqueID;
  set uniqueID(int? uniqueID) => _$this._uniqueID = uniqueID;

  String? _drugName;
  String? get drugName => _$this._drugName;
  set drugName(String? drugName) => _$this._drugName = drugName;

  String? _condition;
  String? get condition => _$this._condition;
  set condition(String? condition) => _$this._condition = condition;

  String? _review;
  String? get review => _$this._review;
  set review(String? review) => _$this._review = review;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MedicineRecordBuilder() {
    MedicineRecord._initializeBuilder(this);
  }

  MedicineRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uniqueID = $v.uniqueID;
      _drugName = $v.drugName;
      _condition = $v.condition;
      _review = $v.review;
      _rating = $v.rating;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MedicineRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MedicineRecord;
  }

  @override
  void update(void Function(MedicineRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MedicineRecord build() => _build();

  _$MedicineRecord _build() {
    final _$result = _$v ??
        new _$MedicineRecord._(
            uniqueID: uniqueID,
            drugName: drugName,
            condition: condition,
            review: review,
            rating: rating,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
