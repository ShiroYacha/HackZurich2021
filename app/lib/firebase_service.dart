import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tuple/tuple.dart';

final userIdProvider = Provider((ref) => "dD2gNSPcPqSdTTUW8JJiTkZHZOG3");

final firebaseServiceProvider =
    Provider((ref) => FirebaseService(ref.watch(userIdProvider)));

class Where {
  Object field;
  Object? isEqualTo;
  Object? isNotEqualTo;
  Object? isLessThan;
  Object? isLessThanOrEqualTo;
  Object? isGreaterThan;
  Object? isGreaterThanOrEqualTo;
  Object? arrayContains;
  List<Object?>? arrayContainsAny;
  List<Object?>? whereIn;
  List<Object?>? whereNotIn;
  bool? isNull;
  Where(this.field,
      {this.isEqualTo,
      this.isNotEqualTo,
      this.isLessThan,
      this.isLessThanOrEqualTo,
      this.isGreaterThan,
      this.isGreaterThanOrEqualTo,
      this.arrayContains,
      this.arrayContainsAny,
      this.whereIn,
      this.whereNotIn,
      this.isNull});
}

class FirebaseService {
  final FirebaseFunctions _functions = FirebaseFunctions.instance;

  final String userId;
  FirebaseService(this.userId);

  Future<Map<String, dynamic>?> callFunctionForResult(String functionName,
      {Map<String, dynamic>? data}) async {
    final parameters = <String, dynamic>{};
    if (data != null) {
      parameters.addAll(data);
    }
    final result = await _functions
        .httpsCallable(functionName)
        .call<Map<String, dynamic>?>(parameters);
    return result.data;
  }

  Future callFunction(String functionName, {Map<String, dynamic>? data}) async {
    final parameters = <String, dynamic>{};
    if (data != null) {
      parameters.addAll(data);
    }
    await _functions.httpsCallable(functionName).call<void>(parameters);
  }

  Query<T> _buildCollectionQuery<T>(
      List<String> path, FromFirestore<T> fromFirestore,
      {List<Where> wheres = const []}) {
    assert(path.length % 2 == 1);
    dynamic query;
    for (var i = 0; i < path.length; i++) {
      if (i == 0 && query == null) {
        query = FirebaseFirestore.instance.collection(path[0]);
      } else {
        query = i % 2 == 0 ? query.collection(path[i]) : query.doc(path[i]);
      }
    }
    if (wheres.isNotEmpty) {
      for (var where in wheres) {
        query = query.where(where.field,
            arrayContains: where.arrayContains,
            arrayContainsAny: where.arrayContainsAny,
            isEqualTo: where.isEqualTo,
            isGreaterThan: where.isGreaterThan,
            isGreaterThanOrEqualTo: where.isGreaterThanOrEqualTo,
            isLessThan: where.isLessThan,
            isLessThanOrEqualTo: where.isLessThanOrEqualTo,
            isNotEqualTo: where.isNotEqualTo,
            isNull: where.isNull,
            whereIn: where.whereIn,
            whereNotIn: where.whereNotIn);
      }
      return (query as Query<Object?>).withConverter(
        fromFirestore: fromFirestore,
        toFirestore: (value, options) => throw UnsupportedError("CANNOT_WRITE"),
      );
    } else {
      return (query as CollectionReference).withConverter(
        fromFirestore: fromFirestore,
        toFirestore: (value, options) => throw UnsupportedError("CANNOT_WRITE"),
      );
    }
  }

  DocumentReference<T> _buildDocumentQuery<T>(
      List<String> path, FromFirestore<T> fromFirestore) {
    assert(path.length % 2 == 0);
    dynamic query;
    for (var i = 0; i < path.length; i++) {
      if (i == 0 && query == null) {
        query = FirebaseFirestore.instance.collection(path[0]);
      } else {
        query = i % 2 == 0 ? query.collection(path[i]) : query.doc(path[i]);
      }
    }
    return (query as DocumentReference).withConverter(
      fromFirestore: fromFirestore,
      toFirestore: (value, options) => throw UnsupportedError("CANNOT_WRITE"),
    );
  }

  Stream<T?> listenToDocument<T>(
      List<String> path, FromFirestore<T> fromFirestore) {
    return _buildDocumentQuery(path, fromFirestore)
        .snapshots()
        .map((d) => d.data());
  }

  Stream<List<T>> listenToCollection<T>(
      List<String> path, FromFirestore<T> fromFirestore,
      {List<Where> wheres = const []}) {
    return _buildCollectionQuery(path, fromFirestore, wheres: wheres)
        .snapshots()
        .map((q) => q.docs.map((d) => d.data()).toList());
  }

  Future<List<T>> loadCollection<T>(
      List<String> path, FromFirestore<T> fromFirestore,
      {List<Where> wheres = const [],
      List<Tuple2<Object, bool>> orderBys = const [],
      List<Object> startAfters = const [],
      int? limit}) {
    var query = _buildCollectionQuery(path, fromFirestore, wheres: wheres);
    for (var orderBy in orderBys) {
      query = query.orderBy(orderBy.item1, descending: orderBy.item2);
    }
    if (startAfters.isNotEmpty) {
      query = query.startAfter(startAfters);
    }
    if (limit != null) {
      query = query.limit(limit);
    }
    return query.get().then((q) => q.docs.map((d) => d.data()).toList());
  }

  Future<List<T>> loadCollectionByIds<T>(
    List<String> path,
    FromFirestore<T> fromFirestore,
    List<String> ids,
  ) {
    return Future.wait(ids.map((id) {
      var query =
          _buildCollectionQuery(path, fromFirestore) as CollectionReference<T>;
      return query.doc(id).get().then((d) {
        return d.data()!;
      });
    }));
  }
}
