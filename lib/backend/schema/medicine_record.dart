import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'medicine_record.g.dart';

abstract class MedicineRecord
    implements Built<MedicineRecord, MedicineRecordBuilder> {
  static Serializer<MedicineRecord> get serializer =>
      _$medicineRecordSerializer;

  int? get uniqueID;

  String? get drugName;

  String? get condition;

  String? get review;

  int? get rating;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MedicineRecordBuilder builder) => builder
    ..uniqueID = 0
    ..drugName = ''
    ..condition = ''
    ..review = ''
    ..rating = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Medicine');

  static Stream<MedicineRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MedicineRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MedicineRecord._();
  factory MedicineRecord([void Function(MedicineRecordBuilder) updates]) =
      _$MedicineRecord;

  static MedicineRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMedicineRecordData({
  int? uniqueID,
  String? drugName,
  String? condition,
  String? review,
  int? rating,
}) {
  final firestoreData = serializers.toFirestore(
    MedicineRecord.serializer,
    MedicineRecord(
      (m) => m
        ..uniqueID = uniqueID
        ..drugName = drugName
        ..condition = condition
        ..review = review
        ..rating = rating,
    ),
  );

  return firestoreData;
}
