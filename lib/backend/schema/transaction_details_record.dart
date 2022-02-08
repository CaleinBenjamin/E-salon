import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'transaction_details_record.g.dart';

abstract class TransactionDetailsRecord
    implements
        Built<TransactionDetailsRecord, TransactionDetailsRecordBuilder> {
  static Serializer<TransactionDetailsRecord> get serializer =>
      _$transactionDetailsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Amount')
  double get amount;

  @nullable
  @BuiltValueField(wireName: 'When')
  DateTime get when;

  @nullable
  @BuiltValueField(wireName: 'Note')
  String get note;

  @nullable
  @BuiltValueField(wireName: 'trans_type')
  BuiltList<String> get transType;

  @nullable
  @BuiltValueField(wireName: 'Tag')
  BuiltList<String> get tag;

  @nullable
  BuiltList<String> get location;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TransactionDetailsRecordBuilder builder) =>
      builder
        ..amount = 0.0
        ..note = ''
        ..transType = ListBuilder()
        ..tag = ListBuilder()
        ..location = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transaction_details');

  static Stream<TransactionDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TransactionDetailsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  TransactionDetailsRecord._();
  factory TransactionDetailsRecord(
          [void Function(TransactionDetailsRecordBuilder) updates]) =
      _$TransactionDetailsRecord;

  static TransactionDetailsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTransactionDetailsRecordData({
  double amount,
  DateTime when,
  String note,
}) =>
    serializers.toFirestore(
        TransactionDetailsRecord.serializer,
        TransactionDetailsRecord((t) => t
          ..amount = amount
          ..when = when
          ..note = note
          ..transType = null
          ..tag = null
          ..location = null));
