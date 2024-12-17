// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters, duplicate_ignore
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_internal_member

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class UsersCollectionReference
    implements
        UsersQuery,
        FirestoreCollectionReference<User, UsersQuerySnapshot> {
  factory UsersCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$UsersCollectionReference;

  static User fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$UserFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    User value,
    SetOptions? options,
  ) {
    return _$UserToJson(value);
  }

  @override
  CollectionReference<User> get reference;

  @override
  UsersDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<UsersDocumentReference> add(User value);
}

class _$UsersCollectionReference extends _$UsersQuery
    implements UsersCollectionReference {
  factory _$UsersCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$UsersCollectionReference._(
      firestore.collection('users').withConverter(
            fromFirestore: UsersCollectionReference.fromFirestore,
            toFirestore: UsersCollectionReference.toFirestore,
          ),
    );
  }

  _$UsersCollectionReference._(
    CollectionReference<User> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<User> get reference =>
      super.reference as CollectionReference<User>;

  @override
  UsersDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return UsersDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<UsersDocumentReference> add(User value) {
    return reference.add(value).then((ref) => UsersDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$UsersCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class UsersDocumentReference
    extends FirestoreDocumentReference<User, UsersDocumentSnapshot> {
  factory UsersDocumentReference(DocumentReference<User> reference) =
      _$UsersDocumentReference;

  DocumentReference<User> get reference;

  /// A reference to the [UsersCollectionReference] containing this document.
  UsersCollectionReference get parent {
    return _$UsersCollectionReference(reference.firestore);
  }

  late final UsersRewardsCollectionReference rewards =
      _$UsersRewardsCollectionReference(
    reference,
  );

  late final UsersTasksCollectionReference tasks =
      _$UsersTasksCollectionReference(
    reference,
  );

  late final UsersAccomodationsCollectionReference accomodations =
      _$UsersAccomodationsCollectionReference(
    reference,
  );

  @override
  Stream<UsersDocumentSnapshot> snapshots();

  @override
  Future<UsersDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    User model, {
    SetOptions? options,
    FieldValue firstNameFieldValue,
    FieldValue lastNameFieldValue,
    FieldValue emailFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    User model, {
    SetOptions? options,
    FieldValue firstNameFieldValue,
    FieldValue lastNameFieldValue,
    FieldValue emailFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    User model, {
    SetOptions? options,
    FieldValue firstNameFieldValue,
    FieldValue lastNameFieldValue,
    FieldValue emailFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String firstName,
    FieldValue firstNameFieldValue,
    String lastName,
    FieldValue lastNameFieldValue,
    String email,
    FieldValue emailFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String firstName,
    FieldValue firstNameFieldValue,
    String lastName,
    FieldValue lastNameFieldValue,
    String email,
    FieldValue emailFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String firstName,
    FieldValue firstNameFieldValue,
    String lastName,
    FieldValue lastNameFieldValue,
    String email,
    FieldValue emailFieldValue,
  });
}

class _$UsersDocumentReference
    extends FirestoreDocumentReference<User, UsersDocumentSnapshot>
    implements UsersDocumentReference {
  _$UsersDocumentReference(this.reference);

  @override
  final DocumentReference<User> reference;

  /// A reference to the [UsersCollectionReference] containing this document.
  UsersCollectionReference get parent {
    return _$UsersCollectionReference(reference.firestore);
  }

  late final UsersRewardsCollectionReference rewards =
      _$UsersRewardsCollectionReference(
    reference,
  );

  late final UsersTasksCollectionReference tasks =
      _$UsersTasksCollectionReference(
    reference,
  );

  late final UsersAccomodationsCollectionReference accomodations =
      _$UsersAccomodationsCollectionReference(
    reference,
  );

  @override
  Stream<UsersDocumentSnapshot> snapshots() {
    return reference.snapshots().map(UsersDocumentSnapshot._);
  }

  @override
  Future<UsersDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UsersDocumentSnapshot._);
  }

  @override
  Future<UsersDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(UsersDocumentSnapshot._);
  }

  Future<void> set(
    User model, {
    SetOptions? options,
    FieldValue? firstNameFieldValue,
    FieldValue? lastNameFieldValue,
    FieldValue? emailFieldValue,
  }) async {
    final json = {
      ..._$UserToJson(model),
      if (firstNameFieldValue != null)
        _$UserFieldMap['firstName']!: firstNameFieldValue,
      if (lastNameFieldValue != null)
        _$UserFieldMap['lastName']!: lastNameFieldValue,
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    User model, {
    SetOptions? options,
    FieldValue? firstNameFieldValue,
    FieldValue? lastNameFieldValue,
    FieldValue? emailFieldValue,
  }) {
    final json = {
      ..._$UserToJson(model),
      if (firstNameFieldValue != null)
        _$UserFieldMap['firstName']!: firstNameFieldValue,
      if (lastNameFieldValue != null)
        _$UserFieldMap['lastName']!: lastNameFieldValue,
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    User model, {
    SetOptions? options,
    FieldValue? firstNameFieldValue,
    FieldValue? lastNameFieldValue,
    FieldValue? emailFieldValue,
  }) {
    final json = {
      ..._$UserToJson(model),
      if (firstNameFieldValue != null)
        _$UserFieldMap['firstName']!: firstNameFieldValue,
      if (lastNameFieldValue != null)
        _$UserFieldMap['lastName']!: lastNameFieldValue,
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? firstName = _sentinel,
    FieldValue? firstNameFieldValue,
    Object? lastName = _sentinel,
    FieldValue? lastNameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
  }) async {
    assert(
      firstName == _sentinel || firstNameFieldValue == null,
      "Cannot specify both firstName and firstNameFieldValue",
    );
    assert(
      lastName == _sentinel || lastNameFieldValue == null,
      "Cannot specify both lastName and lastNameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    final json = {
      if (firstName != _sentinel)
        _$UserFieldMap['firstName']!:
            _$UserPerFieldToJson.firstName(firstName as String),
      if (firstNameFieldValue != null)
        _$UserFieldMap['firstName']!: firstNameFieldValue,
      if (lastName != _sentinel)
        _$UserFieldMap['lastName']!:
            _$UserPerFieldToJson.lastName(lastName as String),
      if (lastNameFieldValue != null)
        _$UserFieldMap['lastName']!: lastNameFieldValue,
      if (email != _sentinel)
        _$UserFieldMap['email']!: _$UserPerFieldToJson.email(email as String),
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? firstName = _sentinel,
    FieldValue? firstNameFieldValue,
    Object? lastName = _sentinel,
    FieldValue? lastNameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
  }) {
    assert(
      firstName == _sentinel || firstNameFieldValue == null,
      "Cannot specify both firstName and firstNameFieldValue",
    );
    assert(
      lastName == _sentinel || lastNameFieldValue == null,
      "Cannot specify both lastName and lastNameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    final json = {
      if (firstName != _sentinel)
        _$UserFieldMap['firstName']!:
            _$UserPerFieldToJson.firstName(firstName as String),
      if (firstNameFieldValue != null)
        _$UserFieldMap['firstName']!: firstNameFieldValue,
      if (lastName != _sentinel)
        _$UserFieldMap['lastName']!:
            _$UserPerFieldToJson.lastName(lastName as String),
      if (lastNameFieldValue != null)
        _$UserFieldMap['lastName']!: lastNameFieldValue,
      if (email != _sentinel)
        _$UserFieldMap['email']!: _$UserPerFieldToJson.email(email as String),
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? firstName = _sentinel,
    FieldValue? firstNameFieldValue,
    Object? lastName = _sentinel,
    FieldValue? lastNameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
  }) {
    assert(
      firstName == _sentinel || firstNameFieldValue == null,
      "Cannot specify both firstName and firstNameFieldValue",
    );
    assert(
      lastName == _sentinel || lastNameFieldValue == null,
      "Cannot specify both lastName and lastNameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    final json = {
      if (firstName != _sentinel)
        _$UserFieldMap['firstName']!:
            _$UserPerFieldToJson.firstName(firstName as String),
      if (firstNameFieldValue != null)
        _$UserFieldMap['firstName']!: firstNameFieldValue,
      if (lastName != _sentinel)
        _$UserFieldMap['lastName']!:
            _$UserPerFieldToJson.lastName(lastName as String),
      if (lastNameFieldValue != null)
        _$UserFieldMap['lastName']!: lastNameFieldValue,
      if (email != _sentinel)
        _$UserFieldMap['email']!: _$UserPerFieldToJson.email(email as String),
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is UsersDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class UsersQuery implements QueryReference<User, UsersQuerySnapshot> {
  @override
  UsersQuery limit(int limit);

  @override
  UsersQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  UsersQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  UsersQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UsersQuery whereFirstName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UsersQuery whereLastName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UsersQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  UsersQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    UsersDocumentSnapshot? startAtDocument,
    UsersDocumentSnapshot? endAtDocument,
    UsersDocumentSnapshot? endBeforeDocument,
    UsersDocumentSnapshot? startAfterDocument,
  });

  UsersQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UsersDocumentSnapshot? startAtDocument,
    UsersDocumentSnapshot? endAtDocument,
    UsersDocumentSnapshot? endBeforeDocument,
    UsersDocumentSnapshot? startAfterDocument,
  });

  UsersQuery orderByFirstName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UsersDocumentSnapshot? startAtDocument,
    UsersDocumentSnapshot? endAtDocument,
    UsersDocumentSnapshot? endBeforeDocument,
    UsersDocumentSnapshot? startAfterDocument,
  });

  UsersQuery orderByLastName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UsersDocumentSnapshot? startAtDocument,
    UsersDocumentSnapshot? endAtDocument,
    UsersDocumentSnapshot? endBeforeDocument,
    UsersDocumentSnapshot? startAfterDocument,
  });

  UsersQuery orderByEmail({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UsersDocumentSnapshot? startAtDocument,
    UsersDocumentSnapshot? endAtDocument,
    UsersDocumentSnapshot? endBeforeDocument,
    UsersDocumentSnapshot? startAfterDocument,
  });
}

class _$UsersQuery extends QueryReference<User, UsersQuerySnapshot>
    implements UsersQuery {
  _$UsersQuery(
    this._collection, {
    required Query<User> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<UsersQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(UsersQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<UsersQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UsersQuerySnapshot._fromQuerySnapshot);
  }

  @override
  UsersQuery limit(int limit) {
    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersQuery limitToLast(int limit) {
    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersQuery whereFirstName({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['firstName']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.firstName(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.firstName(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.firstName(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.firstName(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.firstName(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.firstName(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.firstName(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserPerFieldToJson.firstName(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersQuery whereLastName({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['lastName']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.lastName(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.lastName(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.lastName(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.lastName(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.lastName(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.lastName(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.lastName(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserPerFieldToJson.lastName(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersQuery whereEmail({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['email']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.email(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.email(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.email(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.email(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.email(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.email(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.email(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserPerFieldToJson.email(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersDocumentSnapshot? startAtDocument,
    UsersDocumentSnapshot? endAtDocument,
    UsersDocumentSnapshot? endBeforeDocument,
    UsersDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersDocumentSnapshot? startAtDocument,
    UsersDocumentSnapshot? endAtDocument,
    UsersDocumentSnapshot? endBeforeDocument,
    UsersDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersQuery orderByFirstName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersDocumentSnapshot? startAtDocument,
    UsersDocumentSnapshot? endAtDocument,
    UsersDocumentSnapshot? endBeforeDocument,
    UsersDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserFieldMap['firstName']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersQuery orderByLastName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersDocumentSnapshot? startAtDocument,
    UsersDocumentSnapshot? endAtDocument,
    UsersDocumentSnapshot? endBeforeDocument,
    UsersDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserFieldMap['lastName']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersDocumentSnapshot? startAtDocument,
    UsersDocumentSnapshot? endAtDocument,
    UsersDocumentSnapshot? endBeforeDocument,
    UsersDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserFieldMap['email']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$UsersQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class UsersDocumentSnapshot extends FirestoreDocumentSnapshot<User> {
  UsersDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<User> snapshot;

  @override
  UsersDocumentReference get reference {
    return UsersDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final User? data;
}

class UsersQuerySnapshot
    extends FirestoreQuerySnapshot<User, UsersQueryDocumentSnapshot> {
  UsersQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory UsersQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<User> snapshot,
  ) {
    final docs = snapshot.docs.map(UsersQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        UsersDocumentSnapshot._,
      );
    }).toList();

    return UsersQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<UsersDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    UsersDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<UsersDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<User> snapshot;

  @override
  final List<UsersQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<UsersDocumentSnapshot>> docChanges;
}

class UsersQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<User>
    implements UsersDocumentSnapshot {
  UsersQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<User> snapshot;

  @override
  final User data;

  @override
  UsersDocumentReference get reference {
    return UsersDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class UsersRewardsCollectionReference
    implements
        UsersRewardsQuery,
        FirestoreCollectionReference<Reward, UsersRewardsQuerySnapshot> {
  factory UsersRewardsCollectionReference(
    DocumentReference<User> parent,
  ) = _$UsersRewardsCollectionReference;

  static Reward fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$RewardFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Reward value,
    SetOptions? options,
  ) {
    return _$RewardToJson(value);
  }

  @override
  CollectionReference<Reward> get reference;

  /// A reference to the containing [UsersDocumentReference] if this is a subcollection.
  UsersDocumentReference get parent;

  @override
  UsersRewardsDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<UsersRewardsDocumentReference> add(Reward value);
}

class _$UsersRewardsCollectionReference extends _$UsersRewardsQuery
    implements UsersRewardsCollectionReference {
  factory _$UsersRewardsCollectionReference(
    DocumentReference<User> parent,
  ) {
    return _$UsersRewardsCollectionReference._(
      UsersDocumentReference(parent),
      parent.collection('rewards').withConverter(
            fromFirestore: UsersRewardsCollectionReference.fromFirestore,
            toFirestore: UsersRewardsCollectionReference.toFirestore,
          ),
    );
  }

  _$UsersRewardsCollectionReference._(
    this.parent,
    CollectionReference<Reward> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final UsersDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<Reward> get reference =>
      super.reference as CollectionReference<Reward>;

  @override
  UsersRewardsDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return UsersRewardsDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<UsersRewardsDocumentReference> add(Reward value) {
    return reference
        .add(value)
        .then((ref) => UsersRewardsDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$UsersRewardsCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class UsersRewardsDocumentReference
    extends FirestoreDocumentReference<Reward, UsersRewardsDocumentSnapshot> {
  factory UsersRewardsDocumentReference(DocumentReference<Reward> reference) =
      _$UsersRewardsDocumentReference;

  DocumentReference<Reward> get reference;

  /// A reference to the [UsersRewardsCollectionReference] containing this document.
  UsersRewardsCollectionReference get parent {
    return _$UsersRewardsCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UsersCollectionReference.fromFirestore,
        toFirestore: UsersCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<UsersRewardsDocumentSnapshot> snapshots();

  @override
  Future<UsersRewardsDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    Reward model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue amountFieldValue,
    FieldValue picturePathFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    Reward model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue amountFieldValue,
    FieldValue picturePathFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    Reward model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue amountFieldValue,
    FieldValue picturePathFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String title,
    FieldValue titleFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    double amount,
    FieldValue amountFieldValue,
    String? picturePath,
    FieldValue picturePathFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String title,
    FieldValue titleFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    double amount,
    FieldValue amountFieldValue,
    String? picturePath,
    FieldValue picturePathFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String title,
    FieldValue titleFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    double amount,
    FieldValue amountFieldValue,
    String? picturePath,
    FieldValue picturePathFieldValue,
  });
}

class _$UsersRewardsDocumentReference
    extends FirestoreDocumentReference<Reward, UsersRewardsDocumentSnapshot>
    implements UsersRewardsDocumentReference {
  _$UsersRewardsDocumentReference(this.reference);

  @override
  final DocumentReference<Reward> reference;

  /// A reference to the [UsersRewardsCollectionReference] containing this document.
  UsersRewardsCollectionReference get parent {
    return _$UsersRewardsCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UsersCollectionReference.fromFirestore,
        toFirestore: UsersCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<UsersRewardsDocumentSnapshot> snapshots() {
    return reference.snapshots().map(UsersRewardsDocumentSnapshot._);
  }

  @override
  Future<UsersRewardsDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UsersRewardsDocumentSnapshot._);
  }

  @override
  Future<UsersRewardsDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(UsersRewardsDocumentSnapshot._);
  }

  Future<void> set(
    Reward model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? amountFieldValue,
    FieldValue? picturePathFieldValue,
  }) async {
    final json = {
      ..._$RewardToJson(model),
      if (titleFieldValue != null) _$RewardFieldMap['title']!: titleFieldValue,
      if (descriptionFieldValue != null)
        _$RewardFieldMap['description']!: descriptionFieldValue,
      if (amountFieldValue != null)
        _$RewardFieldMap['amount']!: amountFieldValue,
      if (picturePathFieldValue != null)
        _$RewardFieldMap['picturePath']!: picturePathFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Reward model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? amountFieldValue,
    FieldValue? picturePathFieldValue,
  }) {
    final json = {
      ..._$RewardToJson(model),
      if (titleFieldValue != null) _$RewardFieldMap['title']!: titleFieldValue,
      if (descriptionFieldValue != null)
        _$RewardFieldMap['description']!: descriptionFieldValue,
      if (amountFieldValue != null)
        _$RewardFieldMap['amount']!: amountFieldValue,
      if (picturePathFieldValue != null)
        _$RewardFieldMap['picturePath']!: picturePathFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Reward model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? amountFieldValue,
    FieldValue? picturePathFieldValue,
  }) {
    final json = {
      ..._$RewardToJson(model),
      if (titleFieldValue != null) _$RewardFieldMap['title']!: titleFieldValue,
      if (descriptionFieldValue != null)
        _$RewardFieldMap['description']!: descriptionFieldValue,
      if (amountFieldValue != null)
        _$RewardFieldMap['amount']!: amountFieldValue,
      if (picturePathFieldValue != null)
        _$RewardFieldMap['picturePath']!: picturePathFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? picturePath = _sentinel,
    FieldValue? picturePathFieldValue,
  }) async {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      picturePath == _sentinel || picturePathFieldValue == null,
      "Cannot specify both picturePath and picturePathFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$RewardFieldMap['title']!:
            _$RewardPerFieldToJson.title(title as String),
      if (titleFieldValue != null) _$RewardFieldMap['title']!: titleFieldValue,
      if (description != _sentinel)
        _$RewardFieldMap['description']!:
            _$RewardPerFieldToJson.description(description as String?),
      if (descriptionFieldValue != null)
        _$RewardFieldMap['description']!: descriptionFieldValue,
      if (amount != _sentinel)
        _$RewardFieldMap['amount']!:
            _$RewardPerFieldToJson.amount(amount as double),
      if (amountFieldValue != null)
        _$RewardFieldMap['amount']!: amountFieldValue,
      if (picturePath != _sentinel)
        _$RewardFieldMap['picturePath']!:
            _$RewardPerFieldToJson.picturePath(picturePath as String?),
      if (picturePathFieldValue != null)
        _$RewardFieldMap['picturePath']!: picturePathFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? picturePath = _sentinel,
    FieldValue? picturePathFieldValue,
  }) {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      picturePath == _sentinel || picturePathFieldValue == null,
      "Cannot specify both picturePath and picturePathFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$RewardFieldMap['title']!:
            _$RewardPerFieldToJson.title(title as String),
      if (titleFieldValue != null) _$RewardFieldMap['title']!: titleFieldValue,
      if (description != _sentinel)
        _$RewardFieldMap['description']!:
            _$RewardPerFieldToJson.description(description as String?),
      if (descriptionFieldValue != null)
        _$RewardFieldMap['description']!: descriptionFieldValue,
      if (amount != _sentinel)
        _$RewardFieldMap['amount']!:
            _$RewardPerFieldToJson.amount(amount as double),
      if (amountFieldValue != null)
        _$RewardFieldMap['amount']!: amountFieldValue,
      if (picturePath != _sentinel)
        _$RewardFieldMap['picturePath']!:
            _$RewardPerFieldToJson.picturePath(picturePath as String?),
      if (picturePathFieldValue != null)
        _$RewardFieldMap['picturePath']!: picturePathFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? picturePath = _sentinel,
    FieldValue? picturePathFieldValue,
  }) {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      picturePath == _sentinel || picturePathFieldValue == null,
      "Cannot specify both picturePath and picturePathFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$RewardFieldMap['title']!:
            _$RewardPerFieldToJson.title(title as String),
      if (titleFieldValue != null) _$RewardFieldMap['title']!: titleFieldValue,
      if (description != _sentinel)
        _$RewardFieldMap['description']!:
            _$RewardPerFieldToJson.description(description as String?),
      if (descriptionFieldValue != null)
        _$RewardFieldMap['description']!: descriptionFieldValue,
      if (amount != _sentinel)
        _$RewardFieldMap['amount']!:
            _$RewardPerFieldToJson.amount(amount as double),
      if (amountFieldValue != null)
        _$RewardFieldMap['amount']!: amountFieldValue,
      if (picturePath != _sentinel)
        _$RewardFieldMap['picturePath']!:
            _$RewardPerFieldToJson.picturePath(picturePath as String?),
      if (picturePathFieldValue != null)
        _$RewardFieldMap['picturePath']!: picturePathFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is UsersRewardsDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class UsersRewardsQuery
    implements QueryReference<Reward, UsersRewardsQuerySnapshot> {
  @override
  UsersRewardsQuery limit(int limit);

  @override
  UsersRewardsQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  UsersRewardsQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  UsersRewardsQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UsersRewardsQuery whereTitle({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UsersRewardsQuery whereDescription({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  UsersRewardsQuery whereAmount({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  });

  UsersRewardsQuery wherePicturePath({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  UsersRewardsQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    UsersRewardsDocumentSnapshot? startAtDocument,
    UsersRewardsDocumentSnapshot? endAtDocument,
    UsersRewardsDocumentSnapshot? endBeforeDocument,
    UsersRewardsDocumentSnapshot? startAfterDocument,
  });

  UsersRewardsQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UsersRewardsDocumentSnapshot? startAtDocument,
    UsersRewardsDocumentSnapshot? endAtDocument,
    UsersRewardsDocumentSnapshot? endBeforeDocument,
    UsersRewardsDocumentSnapshot? startAfterDocument,
  });

  UsersRewardsQuery orderByTitle({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UsersRewardsDocumentSnapshot? startAtDocument,
    UsersRewardsDocumentSnapshot? endAtDocument,
    UsersRewardsDocumentSnapshot? endBeforeDocument,
    UsersRewardsDocumentSnapshot? startAfterDocument,
  });

  UsersRewardsQuery orderByDescription({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    UsersRewardsDocumentSnapshot? startAtDocument,
    UsersRewardsDocumentSnapshot? endAtDocument,
    UsersRewardsDocumentSnapshot? endBeforeDocument,
    UsersRewardsDocumentSnapshot? startAfterDocument,
  });

  UsersRewardsQuery orderByAmount({
    bool descending = false,
    double startAt,
    double startAfter,
    double endAt,
    double endBefore,
    UsersRewardsDocumentSnapshot? startAtDocument,
    UsersRewardsDocumentSnapshot? endAtDocument,
    UsersRewardsDocumentSnapshot? endBeforeDocument,
    UsersRewardsDocumentSnapshot? startAfterDocument,
  });

  UsersRewardsQuery orderByPicturePath({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    UsersRewardsDocumentSnapshot? startAtDocument,
    UsersRewardsDocumentSnapshot? endAtDocument,
    UsersRewardsDocumentSnapshot? endBeforeDocument,
    UsersRewardsDocumentSnapshot? startAfterDocument,
  });
}

class _$UsersRewardsQuery
    extends QueryReference<Reward, UsersRewardsQuerySnapshot>
    implements UsersRewardsQuery {
  _$UsersRewardsQuery(
    this._collection, {
    required Query<Reward> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<UsersRewardsQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(UsersRewardsQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<UsersRewardsQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(UsersRewardsQuerySnapshot._fromQuerySnapshot);
  }

  @override
  UsersRewardsQuery limit(int limit) {
    return _$UsersRewardsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersRewardsQuery limitToLast(int limit) {
    return _$UsersRewardsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersRewardsQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersRewardsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersRewardsQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersRewardsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersRewardsQuery whereTitle({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersRewardsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$RewardFieldMap['title']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$RewardPerFieldToJson.title(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$RewardPerFieldToJson.title(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$RewardPerFieldToJson.title(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$RewardPerFieldToJson.title(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$RewardPerFieldToJson.title(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$RewardPerFieldToJson.title(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$RewardPerFieldToJson.title(e)),
        whereNotIn: whereNotIn?.map((e) => _$RewardPerFieldToJson.title(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersRewardsQuery whereDescription({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersRewardsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$RewardFieldMap['description']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$RewardPerFieldToJson.description(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$RewardPerFieldToJson.description(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$RewardPerFieldToJson.description(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$RewardPerFieldToJson.description(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$RewardPerFieldToJson.description(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$RewardPerFieldToJson
                .description(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$RewardPerFieldToJson.description(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$RewardPerFieldToJson.description(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersRewardsQuery whereAmount({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersRewardsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$RewardFieldMap['amount']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$RewardPerFieldToJson.amount(isEqualTo as double)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$RewardPerFieldToJson.amount(isNotEqualTo as double)
            : null,
        isLessThan: isLessThan != null
            ? _$RewardPerFieldToJson.amount(isLessThan as double)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$RewardPerFieldToJson.amount(isLessThanOrEqualTo as double)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$RewardPerFieldToJson.amount(isGreaterThan as double)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$RewardPerFieldToJson.amount(isGreaterThanOrEqualTo as double)
            : null,
        whereIn: whereIn?.map((e) => _$RewardPerFieldToJson.amount(e)),
        whereNotIn: whereNotIn?.map((e) => _$RewardPerFieldToJson.amount(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersRewardsQuery wherePicturePath({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersRewardsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$RewardFieldMap['picturePath']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$RewardPerFieldToJson.picturePath(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$RewardPerFieldToJson.picturePath(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$RewardPerFieldToJson.picturePath(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$RewardPerFieldToJson.picturePath(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$RewardPerFieldToJson.picturePath(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$RewardPerFieldToJson
                .picturePath(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$RewardPerFieldToJson.picturePath(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$RewardPerFieldToJson.picturePath(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersRewardsQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersRewardsDocumentSnapshot? startAtDocument,
    UsersRewardsDocumentSnapshot? endAtDocument,
    UsersRewardsDocumentSnapshot? endBeforeDocument,
    UsersRewardsDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersRewardsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersRewardsQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersRewardsDocumentSnapshot? startAtDocument,
    UsersRewardsDocumentSnapshot? endAtDocument,
    UsersRewardsDocumentSnapshot? endBeforeDocument,
    UsersRewardsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersRewardsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersRewardsQuery orderByTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersRewardsDocumentSnapshot? startAtDocument,
    UsersRewardsDocumentSnapshot? endAtDocument,
    UsersRewardsDocumentSnapshot? endBeforeDocument,
    UsersRewardsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$RewardFieldMap['title']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersRewardsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersRewardsQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersRewardsDocumentSnapshot? startAtDocument,
    UsersRewardsDocumentSnapshot? endAtDocument,
    UsersRewardsDocumentSnapshot? endBeforeDocument,
    UsersRewardsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$RewardFieldMap['description']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersRewardsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersRewardsQuery orderByAmount({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersRewardsDocumentSnapshot? startAtDocument,
    UsersRewardsDocumentSnapshot? endAtDocument,
    UsersRewardsDocumentSnapshot? endBeforeDocument,
    UsersRewardsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$RewardFieldMap['amount']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersRewardsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersRewardsQuery orderByPicturePath({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersRewardsDocumentSnapshot? startAtDocument,
    UsersRewardsDocumentSnapshot? endAtDocument,
    UsersRewardsDocumentSnapshot? endBeforeDocument,
    UsersRewardsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$RewardFieldMap['picturePath']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersRewardsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$UsersRewardsQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class UsersRewardsDocumentSnapshot extends FirestoreDocumentSnapshot<Reward> {
  UsersRewardsDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Reward> snapshot;

  @override
  UsersRewardsDocumentReference get reference {
    return UsersRewardsDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Reward? data;
}

class UsersRewardsQuerySnapshot
    extends FirestoreQuerySnapshot<Reward, UsersRewardsQueryDocumentSnapshot> {
  UsersRewardsQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory UsersRewardsQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Reward> snapshot,
  ) {
    final docs =
        snapshot.docs.map(UsersRewardsQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        UsersRewardsDocumentSnapshot._,
      );
    }).toList();

    return UsersRewardsQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<UsersRewardsDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    UsersRewardsDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<UsersRewardsDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Reward> snapshot;

  @override
  final List<UsersRewardsQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<UsersRewardsDocumentSnapshot>> docChanges;
}

class UsersRewardsQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Reward>
    implements UsersRewardsDocumentSnapshot {
  UsersRewardsQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Reward> snapshot;

  @override
  final Reward data;

  @override
  UsersRewardsDocumentReference get reference {
    return UsersRewardsDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class UsersTasksCollectionReference
    implements
        UsersTasksQuery,
        FirestoreCollectionReference<Task, UsersTasksQuerySnapshot> {
  factory UsersTasksCollectionReference(
    DocumentReference<User> parent,
  ) = _$UsersTasksCollectionReference;

  static Task fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$TaskFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Task value,
    SetOptions? options,
  ) {
    return _$TaskToJson(value);
  }

  @override
  CollectionReference<Task> get reference;

  /// A reference to the containing [UsersDocumentReference] if this is a subcollection.
  UsersDocumentReference get parent;

  @override
  UsersTasksDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<UsersTasksDocumentReference> add(Task value);
}

class _$UsersTasksCollectionReference extends _$UsersTasksQuery
    implements UsersTasksCollectionReference {
  factory _$UsersTasksCollectionReference(
    DocumentReference<User> parent,
  ) {
    return _$UsersTasksCollectionReference._(
      UsersDocumentReference(parent),
      parent.collection('tasks').withConverter(
            fromFirestore: UsersTasksCollectionReference.fromFirestore,
            toFirestore: UsersTasksCollectionReference.toFirestore,
          ),
    );
  }

  _$UsersTasksCollectionReference._(
    this.parent,
    CollectionReference<Task> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final UsersDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<Task> get reference =>
      super.reference as CollectionReference<Task>;

  @override
  UsersTasksDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return UsersTasksDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<UsersTasksDocumentReference> add(Task value) {
    return reference.add(value).then((ref) => UsersTasksDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$UsersTasksCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class UsersTasksDocumentReference
    extends FirestoreDocumentReference<Task, UsersTasksDocumentSnapshot> {
  factory UsersTasksDocumentReference(DocumentReference<Task> reference) =
      _$UsersTasksDocumentReference;

  DocumentReference<Task> get reference;

  /// A reference to the [UsersTasksCollectionReference] containing this document.
  UsersTasksCollectionReference get parent {
    return _$UsersTasksCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UsersCollectionReference.fromFirestore,
        toFirestore: UsersCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<UsersTasksDocumentSnapshot> snapshots();

  @override
  Future<UsersTasksDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    Task model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue amountFieldValue,
    FieldValue picturePathFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    Task model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue amountFieldValue,
    FieldValue picturePathFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    Task model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue amountFieldValue,
    FieldValue picturePathFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String title,
    FieldValue titleFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    double amount,
    FieldValue amountFieldValue,
    String? picturePath,
    FieldValue picturePathFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String title,
    FieldValue titleFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    double amount,
    FieldValue amountFieldValue,
    String? picturePath,
    FieldValue picturePathFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String title,
    FieldValue titleFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    double amount,
    FieldValue amountFieldValue,
    String? picturePath,
    FieldValue picturePathFieldValue,
  });
}

class _$UsersTasksDocumentReference
    extends FirestoreDocumentReference<Task, UsersTasksDocumentSnapshot>
    implements UsersTasksDocumentReference {
  _$UsersTasksDocumentReference(this.reference);

  @override
  final DocumentReference<Task> reference;

  /// A reference to the [UsersTasksCollectionReference] containing this document.
  UsersTasksCollectionReference get parent {
    return _$UsersTasksCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UsersCollectionReference.fromFirestore,
        toFirestore: UsersCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<UsersTasksDocumentSnapshot> snapshots() {
    return reference.snapshots().map(UsersTasksDocumentSnapshot._);
  }

  @override
  Future<UsersTasksDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UsersTasksDocumentSnapshot._);
  }

  @override
  Future<UsersTasksDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(UsersTasksDocumentSnapshot._);
  }

  Future<void> set(
    Task model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? amountFieldValue,
    FieldValue? picturePathFieldValue,
  }) async {
    final json = {
      ..._$TaskToJson(model),
      if (titleFieldValue != null) _$TaskFieldMap['title']!: titleFieldValue,
      if (descriptionFieldValue != null)
        _$TaskFieldMap['description']!: descriptionFieldValue,
      if (amountFieldValue != null) _$TaskFieldMap['amount']!: amountFieldValue,
      if (picturePathFieldValue != null)
        _$TaskFieldMap['picturePath']!: picturePathFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Task model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? amountFieldValue,
    FieldValue? picturePathFieldValue,
  }) {
    final json = {
      ..._$TaskToJson(model),
      if (titleFieldValue != null) _$TaskFieldMap['title']!: titleFieldValue,
      if (descriptionFieldValue != null)
        _$TaskFieldMap['description']!: descriptionFieldValue,
      if (amountFieldValue != null) _$TaskFieldMap['amount']!: amountFieldValue,
      if (picturePathFieldValue != null)
        _$TaskFieldMap['picturePath']!: picturePathFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Task model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? amountFieldValue,
    FieldValue? picturePathFieldValue,
  }) {
    final json = {
      ..._$TaskToJson(model),
      if (titleFieldValue != null) _$TaskFieldMap['title']!: titleFieldValue,
      if (descriptionFieldValue != null)
        _$TaskFieldMap['description']!: descriptionFieldValue,
      if (amountFieldValue != null) _$TaskFieldMap['amount']!: amountFieldValue,
      if (picturePathFieldValue != null)
        _$TaskFieldMap['picturePath']!: picturePathFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? picturePath = _sentinel,
    FieldValue? picturePathFieldValue,
  }) async {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      picturePath == _sentinel || picturePathFieldValue == null,
      "Cannot specify both picturePath and picturePathFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$TaskFieldMap['title']!: _$TaskPerFieldToJson.title(title as String),
      if (titleFieldValue != null) _$TaskFieldMap['title']!: titleFieldValue,
      if (description != _sentinel)
        _$TaskFieldMap['description']!:
            _$TaskPerFieldToJson.description(description as String?),
      if (descriptionFieldValue != null)
        _$TaskFieldMap['description']!: descriptionFieldValue,
      if (amount != _sentinel)
        _$TaskFieldMap['amount']!:
            _$TaskPerFieldToJson.amount(amount as double),
      if (amountFieldValue != null) _$TaskFieldMap['amount']!: amountFieldValue,
      if (picturePath != _sentinel)
        _$TaskFieldMap['picturePath']!:
            _$TaskPerFieldToJson.picturePath(picturePath as String?),
      if (picturePathFieldValue != null)
        _$TaskFieldMap['picturePath']!: picturePathFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? picturePath = _sentinel,
    FieldValue? picturePathFieldValue,
  }) {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      picturePath == _sentinel || picturePathFieldValue == null,
      "Cannot specify both picturePath and picturePathFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$TaskFieldMap['title']!: _$TaskPerFieldToJson.title(title as String),
      if (titleFieldValue != null) _$TaskFieldMap['title']!: titleFieldValue,
      if (description != _sentinel)
        _$TaskFieldMap['description']!:
            _$TaskPerFieldToJson.description(description as String?),
      if (descriptionFieldValue != null)
        _$TaskFieldMap['description']!: descriptionFieldValue,
      if (amount != _sentinel)
        _$TaskFieldMap['amount']!:
            _$TaskPerFieldToJson.amount(amount as double),
      if (amountFieldValue != null) _$TaskFieldMap['amount']!: amountFieldValue,
      if (picturePath != _sentinel)
        _$TaskFieldMap['picturePath']!:
            _$TaskPerFieldToJson.picturePath(picturePath as String?),
      if (picturePathFieldValue != null)
        _$TaskFieldMap['picturePath']!: picturePathFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? picturePath = _sentinel,
    FieldValue? picturePathFieldValue,
  }) {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      picturePath == _sentinel || picturePathFieldValue == null,
      "Cannot specify both picturePath and picturePathFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$TaskFieldMap['title']!: _$TaskPerFieldToJson.title(title as String),
      if (titleFieldValue != null) _$TaskFieldMap['title']!: titleFieldValue,
      if (description != _sentinel)
        _$TaskFieldMap['description']!:
            _$TaskPerFieldToJson.description(description as String?),
      if (descriptionFieldValue != null)
        _$TaskFieldMap['description']!: descriptionFieldValue,
      if (amount != _sentinel)
        _$TaskFieldMap['amount']!:
            _$TaskPerFieldToJson.amount(amount as double),
      if (amountFieldValue != null) _$TaskFieldMap['amount']!: amountFieldValue,
      if (picturePath != _sentinel)
        _$TaskFieldMap['picturePath']!:
            _$TaskPerFieldToJson.picturePath(picturePath as String?),
      if (picturePathFieldValue != null)
        _$TaskFieldMap['picturePath']!: picturePathFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is UsersTasksDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class UsersTasksQuery
    implements QueryReference<Task, UsersTasksQuerySnapshot> {
  @override
  UsersTasksQuery limit(int limit);

  @override
  UsersTasksQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  UsersTasksQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  UsersTasksQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UsersTasksQuery whereTitle({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UsersTasksQuery whereDescription({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  UsersTasksQuery whereAmount({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  });

  UsersTasksQuery wherePicturePath({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  UsersTasksQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    UsersTasksDocumentSnapshot? startAtDocument,
    UsersTasksDocumentSnapshot? endAtDocument,
    UsersTasksDocumentSnapshot? endBeforeDocument,
    UsersTasksDocumentSnapshot? startAfterDocument,
  });

  UsersTasksQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UsersTasksDocumentSnapshot? startAtDocument,
    UsersTasksDocumentSnapshot? endAtDocument,
    UsersTasksDocumentSnapshot? endBeforeDocument,
    UsersTasksDocumentSnapshot? startAfterDocument,
  });

  UsersTasksQuery orderByTitle({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UsersTasksDocumentSnapshot? startAtDocument,
    UsersTasksDocumentSnapshot? endAtDocument,
    UsersTasksDocumentSnapshot? endBeforeDocument,
    UsersTasksDocumentSnapshot? startAfterDocument,
  });

  UsersTasksQuery orderByDescription({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    UsersTasksDocumentSnapshot? startAtDocument,
    UsersTasksDocumentSnapshot? endAtDocument,
    UsersTasksDocumentSnapshot? endBeforeDocument,
    UsersTasksDocumentSnapshot? startAfterDocument,
  });

  UsersTasksQuery orderByAmount({
    bool descending = false,
    double startAt,
    double startAfter,
    double endAt,
    double endBefore,
    UsersTasksDocumentSnapshot? startAtDocument,
    UsersTasksDocumentSnapshot? endAtDocument,
    UsersTasksDocumentSnapshot? endBeforeDocument,
    UsersTasksDocumentSnapshot? startAfterDocument,
  });

  UsersTasksQuery orderByPicturePath({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    UsersTasksDocumentSnapshot? startAtDocument,
    UsersTasksDocumentSnapshot? endAtDocument,
    UsersTasksDocumentSnapshot? endBeforeDocument,
    UsersTasksDocumentSnapshot? startAfterDocument,
  });
}

class _$UsersTasksQuery extends QueryReference<Task, UsersTasksQuerySnapshot>
    implements UsersTasksQuery {
  _$UsersTasksQuery(
    this._collection, {
    required Query<Task> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<UsersTasksQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(UsersTasksQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<UsersTasksQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(UsersTasksQuerySnapshot._fromQuerySnapshot);
  }

  @override
  UsersTasksQuery limit(int limit) {
    return _$UsersTasksQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersTasksQuery limitToLast(int limit) {
    return _$UsersTasksQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersTasksQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersTasksQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersTasksQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersTasksQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersTasksQuery whereTitle({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersTasksQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TaskFieldMap['title']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TaskPerFieldToJson.title(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TaskPerFieldToJson.title(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$TaskPerFieldToJson.title(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TaskPerFieldToJson.title(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TaskPerFieldToJson.title(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TaskPerFieldToJson.title(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$TaskPerFieldToJson.title(e)),
        whereNotIn: whereNotIn?.map((e) => _$TaskPerFieldToJson.title(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersTasksQuery whereDescription({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersTasksQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TaskFieldMap['description']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TaskPerFieldToJson.description(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TaskPerFieldToJson.description(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$TaskPerFieldToJson.description(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TaskPerFieldToJson.description(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TaskPerFieldToJson.description(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TaskPerFieldToJson
                .description(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$TaskPerFieldToJson.description(e)),
        whereNotIn: whereNotIn?.map((e) => _$TaskPerFieldToJson.description(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersTasksQuery whereAmount({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersTasksQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TaskFieldMap['amount']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TaskPerFieldToJson.amount(isEqualTo as double)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TaskPerFieldToJson.amount(isNotEqualTo as double)
            : null,
        isLessThan: isLessThan != null
            ? _$TaskPerFieldToJson.amount(isLessThan as double)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TaskPerFieldToJson.amount(isLessThanOrEqualTo as double)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TaskPerFieldToJson.amount(isGreaterThan as double)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TaskPerFieldToJson.amount(isGreaterThanOrEqualTo as double)
            : null,
        whereIn: whereIn?.map((e) => _$TaskPerFieldToJson.amount(e)),
        whereNotIn: whereNotIn?.map((e) => _$TaskPerFieldToJson.amount(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersTasksQuery wherePicturePath({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersTasksQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TaskFieldMap['picturePath']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TaskPerFieldToJson.picturePath(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TaskPerFieldToJson.picturePath(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$TaskPerFieldToJson.picturePath(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TaskPerFieldToJson.picturePath(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TaskPerFieldToJson.picturePath(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TaskPerFieldToJson
                .picturePath(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$TaskPerFieldToJson.picturePath(e)),
        whereNotIn: whereNotIn?.map((e) => _$TaskPerFieldToJson.picturePath(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersTasksQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersTasksDocumentSnapshot? startAtDocument,
    UsersTasksDocumentSnapshot? endAtDocument,
    UsersTasksDocumentSnapshot? endBeforeDocument,
    UsersTasksDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersTasksQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersTasksQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersTasksDocumentSnapshot? startAtDocument,
    UsersTasksDocumentSnapshot? endAtDocument,
    UsersTasksDocumentSnapshot? endBeforeDocument,
    UsersTasksDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersTasksQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersTasksQuery orderByTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersTasksDocumentSnapshot? startAtDocument,
    UsersTasksDocumentSnapshot? endAtDocument,
    UsersTasksDocumentSnapshot? endBeforeDocument,
    UsersTasksDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$TaskFieldMap['title']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersTasksQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersTasksQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersTasksDocumentSnapshot? startAtDocument,
    UsersTasksDocumentSnapshot? endAtDocument,
    UsersTasksDocumentSnapshot? endBeforeDocument,
    UsersTasksDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$TaskFieldMap['description']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersTasksQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersTasksQuery orderByAmount({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersTasksDocumentSnapshot? startAtDocument,
    UsersTasksDocumentSnapshot? endAtDocument,
    UsersTasksDocumentSnapshot? endBeforeDocument,
    UsersTasksDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$TaskFieldMap['amount']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersTasksQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersTasksQuery orderByPicturePath({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersTasksDocumentSnapshot? startAtDocument,
    UsersTasksDocumentSnapshot? endAtDocument,
    UsersTasksDocumentSnapshot? endBeforeDocument,
    UsersTasksDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$TaskFieldMap['picturePath']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersTasksQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$UsersTasksQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class UsersTasksDocumentSnapshot extends FirestoreDocumentSnapshot<Task> {
  UsersTasksDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Task> snapshot;

  @override
  UsersTasksDocumentReference get reference {
    return UsersTasksDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Task? data;
}

class UsersTasksQuerySnapshot
    extends FirestoreQuerySnapshot<Task, UsersTasksQueryDocumentSnapshot> {
  UsersTasksQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory UsersTasksQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Task> snapshot,
  ) {
    final docs = snapshot.docs.map(UsersTasksQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        UsersTasksDocumentSnapshot._,
      );
    }).toList();

    return UsersTasksQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<UsersTasksDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    UsersTasksDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<UsersTasksDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Task> snapshot;

  @override
  final List<UsersTasksQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<UsersTasksDocumentSnapshot>> docChanges;
}

class UsersTasksQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Task>
    implements UsersTasksDocumentSnapshot {
  UsersTasksQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Task> snapshot;

  @override
  final Task data;

  @override
  UsersTasksDocumentReference get reference {
    return UsersTasksDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class UsersAccomodationsCollectionReference
    implements
        UsersAccomodationsQuery,
        FirestoreCollectionReference<AccomodationPost,
            UsersAccomodationsQuerySnapshot> {
  factory UsersAccomodationsCollectionReference(
    DocumentReference<User> parent,
  ) = _$UsersAccomodationsCollectionReference;

  static AccomodationPost fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$AccomodationPostFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    AccomodationPost value,
    SetOptions? options,
  ) {
    return _$AccomodationPostToJson(value);
  }

  @override
  CollectionReference<AccomodationPost> get reference;

  /// A reference to the containing [UsersDocumentReference] if this is a subcollection.
  UsersDocumentReference get parent;

  @override
  UsersAccomodationsDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<UsersAccomodationsDocumentReference> add(AccomodationPost value);
}

class _$UsersAccomodationsCollectionReference extends _$UsersAccomodationsQuery
    implements UsersAccomodationsCollectionReference {
  factory _$UsersAccomodationsCollectionReference(
    DocumentReference<User> parent,
  ) {
    return _$UsersAccomodationsCollectionReference._(
      UsersDocumentReference(parent),
      parent.collection('accomodations').withConverter(
            fromFirestore: UsersAccomodationsCollectionReference.fromFirestore,
            toFirestore: UsersAccomodationsCollectionReference.toFirestore,
          ),
    );
  }

  _$UsersAccomodationsCollectionReference._(
    this.parent,
    CollectionReference<AccomodationPost> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final UsersDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<AccomodationPost> get reference =>
      super.reference as CollectionReference<AccomodationPost>;

  @override
  UsersAccomodationsDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return UsersAccomodationsDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<UsersAccomodationsDocumentReference> add(AccomodationPost value) {
    return reference
        .add(value)
        .then((ref) => UsersAccomodationsDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$UsersAccomodationsCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class UsersAccomodationsDocumentReference
    extends FirestoreDocumentReference<AccomodationPost,
        UsersAccomodationsDocumentSnapshot> {
  factory UsersAccomodationsDocumentReference(
          DocumentReference<AccomodationPost> reference) =
      _$UsersAccomodationsDocumentReference;

  DocumentReference<AccomodationPost> get reference;

  /// A reference to the [UsersAccomodationsCollectionReference] containing this document.
  UsersAccomodationsCollectionReference get parent {
    return _$UsersAccomodationsCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UsersCollectionReference.fromFirestore,
        toFirestore: UsersCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<UsersAccomodationsDocumentSnapshot> snapshots();

  @override
  Future<UsersAccomodationsDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    AccomodationPost model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue cityFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue amountFieldValue,
    FieldValue ratingFieldValue,
    FieldValue picturePathFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    AccomodationPost model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue cityFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue amountFieldValue,
    FieldValue ratingFieldValue,
    FieldValue picturePathFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    AccomodationPost model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue cityFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue amountFieldValue,
    FieldValue ratingFieldValue,
    FieldValue picturePathFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String title,
    FieldValue titleFieldValue,
    String city,
    FieldValue cityFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    double amount,
    FieldValue amountFieldValue,
    int rating,
    FieldValue ratingFieldValue,
    String? picturePath,
    FieldValue picturePathFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String title,
    FieldValue titleFieldValue,
    String city,
    FieldValue cityFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    double amount,
    FieldValue amountFieldValue,
    int rating,
    FieldValue ratingFieldValue,
    String? picturePath,
    FieldValue picturePathFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String title,
    FieldValue titleFieldValue,
    String city,
    FieldValue cityFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    double amount,
    FieldValue amountFieldValue,
    int rating,
    FieldValue ratingFieldValue,
    String? picturePath,
    FieldValue picturePathFieldValue,
  });
}

class _$UsersAccomodationsDocumentReference extends FirestoreDocumentReference<
        AccomodationPost, UsersAccomodationsDocumentSnapshot>
    implements UsersAccomodationsDocumentReference {
  _$UsersAccomodationsDocumentReference(this.reference);

  @override
  final DocumentReference<AccomodationPost> reference;

  /// A reference to the [UsersAccomodationsCollectionReference] containing this document.
  UsersAccomodationsCollectionReference get parent {
    return _$UsersAccomodationsCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UsersCollectionReference.fromFirestore,
        toFirestore: UsersCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<UsersAccomodationsDocumentSnapshot> snapshots() {
    return reference.snapshots().map(UsersAccomodationsDocumentSnapshot._);
  }

  @override
  Future<UsersAccomodationsDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UsersAccomodationsDocumentSnapshot._);
  }

  @override
  Future<UsersAccomodationsDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction
        .get(reference)
        .then(UsersAccomodationsDocumentSnapshot._);
  }

  Future<void> set(
    AccomodationPost model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? cityFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? amountFieldValue,
    FieldValue? ratingFieldValue,
    FieldValue? picturePathFieldValue,
  }) async {
    final json = {
      ..._$AccomodationPostToJson(model),
      if (titleFieldValue != null)
        _$AccomodationPostFieldMap['title']!: titleFieldValue,
      if (cityFieldValue != null)
        _$AccomodationPostFieldMap['city']!: cityFieldValue,
      if (descriptionFieldValue != null)
        _$AccomodationPostFieldMap['description']!: descriptionFieldValue,
      if (amountFieldValue != null)
        _$AccomodationPostFieldMap['amount']!: amountFieldValue,
      if (ratingFieldValue != null)
        _$AccomodationPostFieldMap['rating']!: ratingFieldValue,
      if (picturePathFieldValue != null)
        _$AccomodationPostFieldMap['picturePath']!: picturePathFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    AccomodationPost model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? cityFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? amountFieldValue,
    FieldValue? ratingFieldValue,
    FieldValue? picturePathFieldValue,
  }) {
    final json = {
      ..._$AccomodationPostToJson(model),
      if (titleFieldValue != null)
        _$AccomodationPostFieldMap['title']!: titleFieldValue,
      if (cityFieldValue != null)
        _$AccomodationPostFieldMap['city']!: cityFieldValue,
      if (descriptionFieldValue != null)
        _$AccomodationPostFieldMap['description']!: descriptionFieldValue,
      if (amountFieldValue != null)
        _$AccomodationPostFieldMap['amount']!: amountFieldValue,
      if (ratingFieldValue != null)
        _$AccomodationPostFieldMap['rating']!: ratingFieldValue,
      if (picturePathFieldValue != null)
        _$AccomodationPostFieldMap['picturePath']!: picturePathFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    AccomodationPost model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? cityFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? amountFieldValue,
    FieldValue? ratingFieldValue,
    FieldValue? picturePathFieldValue,
  }) {
    final json = {
      ..._$AccomodationPostToJson(model),
      if (titleFieldValue != null)
        _$AccomodationPostFieldMap['title']!: titleFieldValue,
      if (cityFieldValue != null)
        _$AccomodationPostFieldMap['city']!: cityFieldValue,
      if (descriptionFieldValue != null)
        _$AccomodationPostFieldMap['description']!: descriptionFieldValue,
      if (amountFieldValue != null)
        _$AccomodationPostFieldMap['amount']!: amountFieldValue,
      if (ratingFieldValue != null)
        _$AccomodationPostFieldMap['rating']!: ratingFieldValue,
      if (picturePathFieldValue != null)
        _$AccomodationPostFieldMap['picturePath']!: picturePathFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? city = _sentinel,
    FieldValue? cityFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? rating = _sentinel,
    FieldValue? ratingFieldValue,
    Object? picturePath = _sentinel,
    FieldValue? picturePathFieldValue,
  }) async {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      city == _sentinel || cityFieldValue == null,
      "Cannot specify both city and cityFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      rating == _sentinel || ratingFieldValue == null,
      "Cannot specify both rating and ratingFieldValue",
    );
    assert(
      picturePath == _sentinel || picturePathFieldValue == null,
      "Cannot specify both picturePath and picturePathFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$AccomodationPostFieldMap['title']!:
            _$AccomodationPostPerFieldToJson.title(title as String),
      if (titleFieldValue != null)
        _$AccomodationPostFieldMap['title']!: titleFieldValue,
      if (city != _sentinel)
        _$AccomodationPostFieldMap['city']!:
            _$AccomodationPostPerFieldToJson.city(city as String),
      if (cityFieldValue != null)
        _$AccomodationPostFieldMap['city']!: cityFieldValue,
      if (description != _sentinel)
        _$AccomodationPostFieldMap['description']!:
            _$AccomodationPostPerFieldToJson
                .description(description as String?),
      if (descriptionFieldValue != null)
        _$AccomodationPostFieldMap['description']!: descriptionFieldValue,
      if (amount != _sentinel)
        _$AccomodationPostFieldMap['amount']!:
            _$AccomodationPostPerFieldToJson.amount(amount as double),
      if (amountFieldValue != null)
        _$AccomodationPostFieldMap['amount']!: amountFieldValue,
      if (rating != _sentinel)
        _$AccomodationPostFieldMap['rating']!:
            _$AccomodationPostPerFieldToJson.rating(rating as int),
      if (ratingFieldValue != null)
        _$AccomodationPostFieldMap['rating']!: ratingFieldValue,
      if (picturePath != _sentinel)
        _$AccomodationPostFieldMap['picturePath']!:
            _$AccomodationPostPerFieldToJson
                .picturePath(picturePath as String?),
      if (picturePathFieldValue != null)
        _$AccomodationPostFieldMap['picturePath']!: picturePathFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? city = _sentinel,
    FieldValue? cityFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? rating = _sentinel,
    FieldValue? ratingFieldValue,
    Object? picturePath = _sentinel,
    FieldValue? picturePathFieldValue,
  }) {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      city == _sentinel || cityFieldValue == null,
      "Cannot specify both city and cityFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      rating == _sentinel || ratingFieldValue == null,
      "Cannot specify both rating and ratingFieldValue",
    );
    assert(
      picturePath == _sentinel || picturePathFieldValue == null,
      "Cannot specify both picturePath and picturePathFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$AccomodationPostFieldMap['title']!:
            _$AccomodationPostPerFieldToJson.title(title as String),
      if (titleFieldValue != null)
        _$AccomodationPostFieldMap['title']!: titleFieldValue,
      if (city != _sentinel)
        _$AccomodationPostFieldMap['city']!:
            _$AccomodationPostPerFieldToJson.city(city as String),
      if (cityFieldValue != null)
        _$AccomodationPostFieldMap['city']!: cityFieldValue,
      if (description != _sentinel)
        _$AccomodationPostFieldMap['description']!:
            _$AccomodationPostPerFieldToJson
                .description(description as String?),
      if (descriptionFieldValue != null)
        _$AccomodationPostFieldMap['description']!: descriptionFieldValue,
      if (amount != _sentinel)
        _$AccomodationPostFieldMap['amount']!:
            _$AccomodationPostPerFieldToJson.amount(amount as double),
      if (amountFieldValue != null)
        _$AccomodationPostFieldMap['amount']!: amountFieldValue,
      if (rating != _sentinel)
        _$AccomodationPostFieldMap['rating']!:
            _$AccomodationPostPerFieldToJson.rating(rating as int),
      if (ratingFieldValue != null)
        _$AccomodationPostFieldMap['rating']!: ratingFieldValue,
      if (picturePath != _sentinel)
        _$AccomodationPostFieldMap['picturePath']!:
            _$AccomodationPostPerFieldToJson
                .picturePath(picturePath as String?),
      if (picturePathFieldValue != null)
        _$AccomodationPostFieldMap['picturePath']!: picturePathFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? city = _sentinel,
    FieldValue? cityFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? rating = _sentinel,
    FieldValue? ratingFieldValue,
    Object? picturePath = _sentinel,
    FieldValue? picturePathFieldValue,
  }) {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      city == _sentinel || cityFieldValue == null,
      "Cannot specify both city and cityFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      rating == _sentinel || ratingFieldValue == null,
      "Cannot specify both rating and ratingFieldValue",
    );
    assert(
      picturePath == _sentinel || picturePathFieldValue == null,
      "Cannot specify both picturePath and picturePathFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$AccomodationPostFieldMap['title']!:
            _$AccomodationPostPerFieldToJson.title(title as String),
      if (titleFieldValue != null)
        _$AccomodationPostFieldMap['title']!: titleFieldValue,
      if (city != _sentinel)
        _$AccomodationPostFieldMap['city']!:
            _$AccomodationPostPerFieldToJson.city(city as String),
      if (cityFieldValue != null)
        _$AccomodationPostFieldMap['city']!: cityFieldValue,
      if (description != _sentinel)
        _$AccomodationPostFieldMap['description']!:
            _$AccomodationPostPerFieldToJson
                .description(description as String?),
      if (descriptionFieldValue != null)
        _$AccomodationPostFieldMap['description']!: descriptionFieldValue,
      if (amount != _sentinel)
        _$AccomodationPostFieldMap['amount']!:
            _$AccomodationPostPerFieldToJson.amount(amount as double),
      if (amountFieldValue != null)
        _$AccomodationPostFieldMap['amount']!: amountFieldValue,
      if (rating != _sentinel)
        _$AccomodationPostFieldMap['rating']!:
            _$AccomodationPostPerFieldToJson.rating(rating as int),
      if (ratingFieldValue != null)
        _$AccomodationPostFieldMap['rating']!: ratingFieldValue,
      if (picturePath != _sentinel)
        _$AccomodationPostFieldMap['picturePath']!:
            _$AccomodationPostPerFieldToJson
                .picturePath(picturePath as String?),
      if (picturePathFieldValue != null)
        _$AccomodationPostFieldMap['picturePath']!: picturePathFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is UsersAccomodationsDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class UsersAccomodationsQuery
    implements
        QueryReference<AccomodationPost, UsersAccomodationsQuerySnapshot> {
  @override
  UsersAccomodationsQuery limit(int limit);

  @override
  UsersAccomodationsQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  UsersAccomodationsQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  UsersAccomodationsQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UsersAccomodationsQuery whereTitle({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UsersAccomodationsQuery whereCity({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UsersAccomodationsQuery whereDescription({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  UsersAccomodationsQuery whereAmount({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  });

  UsersAccomodationsQuery whereRating({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
    bool? isNull,
  });

  UsersAccomodationsQuery wherePicturePath({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  UsersAccomodationsQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    UsersAccomodationsDocumentSnapshot? startAtDocument,
    UsersAccomodationsDocumentSnapshot? endAtDocument,
    UsersAccomodationsDocumentSnapshot? endBeforeDocument,
    UsersAccomodationsDocumentSnapshot? startAfterDocument,
  });

  UsersAccomodationsQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UsersAccomodationsDocumentSnapshot? startAtDocument,
    UsersAccomodationsDocumentSnapshot? endAtDocument,
    UsersAccomodationsDocumentSnapshot? endBeforeDocument,
    UsersAccomodationsDocumentSnapshot? startAfterDocument,
  });

  UsersAccomodationsQuery orderByTitle({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UsersAccomodationsDocumentSnapshot? startAtDocument,
    UsersAccomodationsDocumentSnapshot? endAtDocument,
    UsersAccomodationsDocumentSnapshot? endBeforeDocument,
    UsersAccomodationsDocumentSnapshot? startAfterDocument,
  });

  UsersAccomodationsQuery orderByCity({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UsersAccomodationsDocumentSnapshot? startAtDocument,
    UsersAccomodationsDocumentSnapshot? endAtDocument,
    UsersAccomodationsDocumentSnapshot? endBeforeDocument,
    UsersAccomodationsDocumentSnapshot? startAfterDocument,
  });

  UsersAccomodationsQuery orderByDescription({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    UsersAccomodationsDocumentSnapshot? startAtDocument,
    UsersAccomodationsDocumentSnapshot? endAtDocument,
    UsersAccomodationsDocumentSnapshot? endBeforeDocument,
    UsersAccomodationsDocumentSnapshot? startAfterDocument,
  });

  UsersAccomodationsQuery orderByAmount({
    bool descending = false,
    double startAt,
    double startAfter,
    double endAt,
    double endBefore,
    UsersAccomodationsDocumentSnapshot? startAtDocument,
    UsersAccomodationsDocumentSnapshot? endAtDocument,
    UsersAccomodationsDocumentSnapshot? endBeforeDocument,
    UsersAccomodationsDocumentSnapshot? startAfterDocument,
  });

  UsersAccomodationsQuery orderByRating({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    UsersAccomodationsDocumentSnapshot? startAtDocument,
    UsersAccomodationsDocumentSnapshot? endAtDocument,
    UsersAccomodationsDocumentSnapshot? endBeforeDocument,
    UsersAccomodationsDocumentSnapshot? startAfterDocument,
  });

  UsersAccomodationsQuery orderByPicturePath({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    UsersAccomodationsDocumentSnapshot? startAtDocument,
    UsersAccomodationsDocumentSnapshot? endAtDocument,
    UsersAccomodationsDocumentSnapshot? endBeforeDocument,
    UsersAccomodationsDocumentSnapshot? startAfterDocument,
  });
}

class _$UsersAccomodationsQuery
    extends QueryReference<AccomodationPost, UsersAccomodationsQuerySnapshot>
    implements UsersAccomodationsQuery {
  _$UsersAccomodationsQuery(
    this._collection, {
    required Query<AccomodationPost> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<UsersAccomodationsQuerySnapshot> snapshots(
      [SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(UsersAccomodationsQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<UsersAccomodationsQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(UsersAccomodationsQuerySnapshot._fromQuerySnapshot);
  }

  @override
  UsersAccomodationsQuery limit(int limit) {
    return _$UsersAccomodationsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersAccomodationsQuery limitToLast(int limit) {
    return _$UsersAccomodationsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersAccomodationsQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersAccomodationsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersAccomodationsQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersAccomodationsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersAccomodationsQuery whereTitle({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersAccomodationsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AccomodationPostFieldMap['title']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson.title(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson.title(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$AccomodationPostPerFieldToJson.title(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .title(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AccomodationPostPerFieldToJson.title(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .title(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$AccomodationPostPerFieldToJson.title(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AccomodationPostPerFieldToJson.title(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersAccomodationsQuery whereCity({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersAccomodationsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AccomodationPostFieldMap['city']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson.city(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson.city(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$AccomodationPostPerFieldToJson.city(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .city(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AccomodationPostPerFieldToJson.city(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .city(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$AccomodationPostPerFieldToJson.city(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AccomodationPostPerFieldToJson.city(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersAccomodationsQuery whereDescription({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersAccomodationsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AccomodationPostFieldMap['description']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson.description(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson
                .description(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$AccomodationPostPerFieldToJson
                .description(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .description(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AccomodationPostPerFieldToJson
                .description(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .description(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$AccomodationPostPerFieldToJson.description(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$AccomodationPostPerFieldToJson.description(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersAccomodationsQuery whereAmount({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersAccomodationsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AccomodationPostFieldMap['amount']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson.amount(isEqualTo as double)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson.amount(isNotEqualTo as double)
            : null,
        isLessThan: isLessThan != null
            ? _$AccomodationPostPerFieldToJson.amount(isLessThan as double)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .amount(isLessThanOrEqualTo as double)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AccomodationPostPerFieldToJson.amount(isGreaterThan as double)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .amount(isGreaterThanOrEqualTo as double)
            : null,
        whereIn:
            whereIn?.map((e) => _$AccomodationPostPerFieldToJson.amount(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AccomodationPostPerFieldToJson.amount(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersAccomodationsQuery whereRating({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersAccomodationsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AccomodationPostFieldMap['rating']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson.rating(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson.rating(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$AccomodationPostPerFieldToJson.rating(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .rating(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AccomodationPostPerFieldToJson.rating(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .rating(isGreaterThanOrEqualTo as int)
            : null,
        whereIn:
            whereIn?.map((e) => _$AccomodationPostPerFieldToJson.rating(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AccomodationPostPerFieldToJson.rating(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersAccomodationsQuery wherePicturePath({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersAccomodationsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AccomodationPostFieldMap['picturePath']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson.picturePath(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson
                .picturePath(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$AccomodationPostPerFieldToJson
                .picturePath(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .picturePath(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AccomodationPostPerFieldToJson
                .picturePath(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .picturePath(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$AccomodationPostPerFieldToJson.picturePath(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$AccomodationPostPerFieldToJson.picturePath(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersAccomodationsQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersAccomodationsDocumentSnapshot? startAtDocument,
    UsersAccomodationsDocumentSnapshot? endAtDocument,
    UsersAccomodationsDocumentSnapshot? endBeforeDocument,
    UsersAccomodationsDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersAccomodationsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersAccomodationsQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersAccomodationsDocumentSnapshot? startAtDocument,
    UsersAccomodationsDocumentSnapshot? endAtDocument,
    UsersAccomodationsDocumentSnapshot? endBeforeDocument,
    UsersAccomodationsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersAccomodationsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersAccomodationsQuery orderByTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersAccomodationsDocumentSnapshot? startAtDocument,
    UsersAccomodationsDocumentSnapshot? endAtDocument,
    UsersAccomodationsDocumentSnapshot? endBeforeDocument,
    UsersAccomodationsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AccomodationPostFieldMap['title']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersAccomodationsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersAccomodationsQuery orderByCity({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersAccomodationsDocumentSnapshot? startAtDocument,
    UsersAccomodationsDocumentSnapshot? endAtDocument,
    UsersAccomodationsDocumentSnapshot? endBeforeDocument,
    UsersAccomodationsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AccomodationPostFieldMap['city']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersAccomodationsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersAccomodationsQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersAccomodationsDocumentSnapshot? startAtDocument,
    UsersAccomodationsDocumentSnapshot? endAtDocument,
    UsersAccomodationsDocumentSnapshot? endBeforeDocument,
    UsersAccomodationsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$AccomodationPostFieldMap['description']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersAccomodationsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersAccomodationsQuery orderByAmount({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersAccomodationsDocumentSnapshot? startAtDocument,
    UsersAccomodationsDocumentSnapshot? endAtDocument,
    UsersAccomodationsDocumentSnapshot? endBeforeDocument,
    UsersAccomodationsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AccomodationPostFieldMap['amount']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersAccomodationsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersAccomodationsQuery orderByRating({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersAccomodationsDocumentSnapshot? startAtDocument,
    UsersAccomodationsDocumentSnapshot? endAtDocument,
    UsersAccomodationsDocumentSnapshot? endBeforeDocument,
    UsersAccomodationsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AccomodationPostFieldMap['rating']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersAccomodationsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersAccomodationsQuery orderByPicturePath({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersAccomodationsDocumentSnapshot? startAtDocument,
    UsersAccomodationsDocumentSnapshot? endAtDocument,
    UsersAccomodationsDocumentSnapshot? endBeforeDocument,
    UsersAccomodationsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$AccomodationPostFieldMap['picturePath']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersAccomodationsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$UsersAccomodationsQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class UsersAccomodationsDocumentSnapshot
    extends FirestoreDocumentSnapshot<AccomodationPost> {
  UsersAccomodationsDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<AccomodationPost> snapshot;

  @override
  UsersAccomodationsDocumentReference get reference {
    return UsersAccomodationsDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final AccomodationPost? data;
}

class UsersAccomodationsQuerySnapshot extends FirestoreQuerySnapshot<
    AccomodationPost, UsersAccomodationsQueryDocumentSnapshot> {
  UsersAccomodationsQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory UsersAccomodationsQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<AccomodationPost> snapshot,
  ) {
    final docs =
        snapshot.docs.map(UsersAccomodationsQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        UsersAccomodationsDocumentSnapshot._,
      );
    }).toList();

    return UsersAccomodationsQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<UsersAccomodationsDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    UsersAccomodationsDocumentSnapshot Function(DocumentSnapshot<T> doc)
        decodeDoc,
  ) {
    return FirestoreDocumentChange<UsersAccomodationsDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<AccomodationPost> snapshot;

  @override
  final List<UsersAccomodationsQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<UsersAccomodationsDocumentSnapshot>>
      docChanges;
}

class UsersAccomodationsQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<AccomodationPost>
    implements UsersAccomodationsDocumentSnapshot {
  UsersAccomodationsQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<AccomodationPost> snapshot;

  @override
  final AccomodationPost data;

  @override
  UsersAccomodationsDocumentReference get reference {
    return UsersAccomodationsDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class RewardsCollectionReference
    implements
        RewardsQuery,
        FirestoreCollectionReference<Reward, RewardsQuerySnapshot> {
  factory RewardsCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$RewardsCollectionReference;

  static Reward fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$RewardFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Reward value,
    SetOptions? options,
  ) {
    return _$RewardToJson(value);
  }

  @override
  CollectionReference<Reward> get reference;

  @override
  RewardsDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<RewardsDocumentReference> add(Reward value);
}

class _$RewardsCollectionReference extends _$RewardsQuery
    implements RewardsCollectionReference {
  factory _$RewardsCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$RewardsCollectionReference._(
      firestore.collection('rewards').withConverter(
            fromFirestore: RewardsCollectionReference.fromFirestore,
            toFirestore: RewardsCollectionReference.toFirestore,
          ),
    );
  }

  _$RewardsCollectionReference._(
    CollectionReference<Reward> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Reward> get reference =>
      super.reference as CollectionReference<Reward>;

  @override
  RewardsDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return RewardsDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<RewardsDocumentReference> add(Reward value) {
    return reference.add(value).then((ref) => RewardsDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$RewardsCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class RewardsDocumentReference
    extends FirestoreDocumentReference<Reward, RewardsDocumentSnapshot> {
  factory RewardsDocumentReference(DocumentReference<Reward> reference) =
      _$RewardsDocumentReference;

  DocumentReference<Reward> get reference;

  /// A reference to the [RewardsCollectionReference] containing this document.
  RewardsCollectionReference get parent {
    return _$RewardsCollectionReference(reference.firestore);
  }

  @override
  Stream<RewardsDocumentSnapshot> snapshots();

  @override
  Future<RewardsDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    Reward model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue amountFieldValue,
    FieldValue picturePathFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    Reward model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue amountFieldValue,
    FieldValue picturePathFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    Reward model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue amountFieldValue,
    FieldValue picturePathFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String title,
    FieldValue titleFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    double amount,
    FieldValue amountFieldValue,
    String? picturePath,
    FieldValue picturePathFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String title,
    FieldValue titleFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    double amount,
    FieldValue amountFieldValue,
    String? picturePath,
    FieldValue picturePathFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String title,
    FieldValue titleFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    double amount,
    FieldValue amountFieldValue,
    String? picturePath,
    FieldValue picturePathFieldValue,
  });
}

class _$RewardsDocumentReference
    extends FirestoreDocumentReference<Reward, RewardsDocumentSnapshot>
    implements RewardsDocumentReference {
  _$RewardsDocumentReference(this.reference);

  @override
  final DocumentReference<Reward> reference;

  /// A reference to the [RewardsCollectionReference] containing this document.
  RewardsCollectionReference get parent {
    return _$RewardsCollectionReference(reference.firestore);
  }

  @override
  Stream<RewardsDocumentSnapshot> snapshots() {
    return reference.snapshots().map(RewardsDocumentSnapshot._);
  }

  @override
  Future<RewardsDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(RewardsDocumentSnapshot._);
  }

  @override
  Future<RewardsDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(RewardsDocumentSnapshot._);
  }

  Future<void> set(
    Reward model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? amountFieldValue,
    FieldValue? picturePathFieldValue,
  }) async {
    final json = {
      ..._$RewardToJson(model),
      if (titleFieldValue != null) _$RewardFieldMap['title']!: titleFieldValue,
      if (descriptionFieldValue != null)
        _$RewardFieldMap['description']!: descriptionFieldValue,
      if (amountFieldValue != null)
        _$RewardFieldMap['amount']!: amountFieldValue,
      if (picturePathFieldValue != null)
        _$RewardFieldMap['picturePath']!: picturePathFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Reward model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? amountFieldValue,
    FieldValue? picturePathFieldValue,
  }) {
    final json = {
      ..._$RewardToJson(model),
      if (titleFieldValue != null) _$RewardFieldMap['title']!: titleFieldValue,
      if (descriptionFieldValue != null)
        _$RewardFieldMap['description']!: descriptionFieldValue,
      if (amountFieldValue != null)
        _$RewardFieldMap['amount']!: amountFieldValue,
      if (picturePathFieldValue != null)
        _$RewardFieldMap['picturePath']!: picturePathFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Reward model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? amountFieldValue,
    FieldValue? picturePathFieldValue,
  }) {
    final json = {
      ..._$RewardToJson(model),
      if (titleFieldValue != null) _$RewardFieldMap['title']!: titleFieldValue,
      if (descriptionFieldValue != null)
        _$RewardFieldMap['description']!: descriptionFieldValue,
      if (amountFieldValue != null)
        _$RewardFieldMap['amount']!: amountFieldValue,
      if (picturePathFieldValue != null)
        _$RewardFieldMap['picturePath']!: picturePathFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? picturePath = _sentinel,
    FieldValue? picturePathFieldValue,
  }) async {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      picturePath == _sentinel || picturePathFieldValue == null,
      "Cannot specify both picturePath and picturePathFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$RewardFieldMap['title']!:
            _$RewardPerFieldToJson.title(title as String),
      if (titleFieldValue != null) _$RewardFieldMap['title']!: titleFieldValue,
      if (description != _sentinel)
        _$RewardFieldMap['description']!:
            _$RewardPerFieldToJson.description(description as String?),
      if (descriptionFieldValue != null)
        _$RewardFieldMap['description']!: descriptionFieldValue,
      if (amount != _sentinel)
        _$RewardFieldMap['amount']!:
            _$RewardPerFieldToJson.amount(amount as double),
      if (amountFieldValue != null)
        _$RewardFieldMap['amount']!: amountFieldValue,
      if (picturePath != _sentinel)
        _$RewardFieldMap['picturePath']!:
            _$RewardPerFieldToJson.picturePath(picturePath as String?),
      if (picturePathFieldValue != null)
        _$RewardFieldMap['picturePath']!: picturePathFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? picturePath = _sentinel,
    FieldValue? picturePathFieldValue,
  }) {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      picturePath == _sentinel || picturePathFieldValue == null,
      "Cannot specify both picturePath and picturePathFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$RewardFieldMap['title']!:
            _$RewardPerFieldToJson.title(title as String),
      if (titleFieldValue != null) _$RewardFieldMap['title']!: titleFieldValue,
      if (description != _sentinel)
        _$RewardFieldMap['description']!:
            _$RewardPerFieldToJson.description(description as String?),
      if (descriptionFieldValue != null)
        _$RewardFieldMap['description']!: descriptionFieldValue,
      if (amount != _sentinel)
        _$RewardFieldMap['amount']!:
            _$RewardPerFieldToJson.amount(amount as double),
      if (amountFieldValue != null)
        _$RewardFieldMap['amount']!: amountFieldValue,
      if (picturePath != _sentinel)
        _$RewardFieldMap['picturePath']!:
            _$RewardPerFieldToJson.picturePath(picturePath as String?),
      if (picturePathFieldValue != null)
        _$RewardFieldMap['picturePath']!: picturePathFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? picturePath = _sentinel,
    FieldValue? picturePathFieldValue,
  }) {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      picturePath == _sentinel || picturePathFieldValue == null,
      "Cannot specify both picturePath and picturePathFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$RewardFieldMap['title']!:
            _$RewardPerFieldToJson.title(title as String),
      if (titleFieldValue != null) _$RewardFieldMap['title']!: titleFieldValue,
      if (description != _sentinel)
        _$RewardFieldMap['description']!:
            _$RewardPerFieldToJson.description(description as String?),
      if (descriptionFieldValue != null)
        _$RewardFieldMap['description']!: descriptionFieldValue,
      if (amount != _sentinel)
        _$RewardFieldMap['amount']!:
            _$RewardPerFieldToJson.amount(amount as double),
      if (amountFieldValue != null)
        _$RewardFieldMap['amount']!: amountFieldValue,
      if (picturePath != _sentinel)
        _$RewardFieldMap['picturePath']!:
            _$RewardPerFieldToJson.picturePath(picturePath as String?),
      if (picturePathFieldValue != null)
        _$RewardFieldMap['picturePath']!: picturePathFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is RewardsDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class RewardsQuery
    implements QueryReference<Reward, RewardsQuerySnapshot> {
  @override
  RewardsQuery limit(int limit);

  @override
  RewardsQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  RewardsQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  RewardsQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  RewardsQuery whereTitle({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  RewardsQuery whereDescription({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  RewardsQuery whereAmount({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  });

  RewardsQuery wherePicturePath({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  RewardsQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    RewardsDocumentSnapshot? startAtDocument,
    RewardsDocumentSnapshot? endAtDocument,
    RewardsDocumentSnapshot? endBeforeDocument,
    RewardsDocumentSnapshot? startAfterDocument,
  });

  RewardsQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    RewardsDocumentSnapshot? startAtDocument,
    RewardsDocumentSnapshot? endAtDocument,
    RewardsDocumentSnapshot? endBeforeDocument,
    RewardsDocumentSnapshot? startAfterDocument,
  });

  RewardsQuery orderByTitle({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    RewardsDocumentSnapshot? startAtDocument,
    RewardsDocumentSnapshot? endAtDocument,
    RewardsDocumentSnapshot? endBeforeDocument,
    RewardsDocumentSnapshot? startAfterDocument,
  });

  RewardsQuery orderByDescription({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    RewardsDocumentSnapshot? startAtDocument,
    RewardsDocumentSnapshot? endAtDocument,
    RewardsDocumentSnapshot? endBeforeDocument,
    RewardsDocumentSnapshot? startAfterDocument,
  });

  RewardsQuery orderByAmount({
    bool descending = false,
    double startAt,
    double startAfter,
    double endAt,
    double endBefore,
    RewardsDocumentSnapshot? startAtDocument,
    RewardsDocumentSnapshot? endAtDocument,
    RewardsDocumentSnapshot? endBeforeDocument,
    RewardsDocumentSnapshot? startAfterDocument,
  });

  RewardsQuery orderByPicturePath({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    RewardsDocumentSnapshot? startAtDocument,
    RewardsDocumentSnapshot? endAtDocument,
    RewardsDocumentSnapshot? endBeforeDocument,
    RewardsDocumentSnapshot? startAfterDocument,
  });
}

class _$RewardsQuery extends QueryReference<Reward, RewardsQuerySnapshot>
    implements RewardsQuery {
  _$RewardsQuery(
    this._collection, {
    required Query<Reward> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<RewardsQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(RewardsQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<RewardsQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(RewardsQuerySnapshot._fromQuerySnapshot);
  }

  @override
  RewardsQuery limit(int limit) {
    return _$RewardsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  RewardsQuery limitToLast(int limit) {
    return _$RewardsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  RewardsQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$RewardsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  RewardsQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$RewardsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  RewardsQuery whereTitle({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$RewardsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$RewardFieldMap['title']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$RewardPerFieldToJson.title(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$RewardPerFieldToJson.title(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$RewardPerFieldToJson.title(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$RewardPerFieldToJson.title(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$RewardPerFieldToJson.title(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$RewardPerFieldToJson.title(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$RewardPerFieldToJson.title(e)),
        whereNotIn: whereNotIn?.map((e) => _$RewardPerFieldToJson.title(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  RewardsQuery whereDescription({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$RewardsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$RewardFieldMap['description']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$RewardPerFieldToJson.description(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$RewardPerFieldToJson.description(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$RewardPerFieldToJson.description(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$RewardPerFieldToJson.description(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$RewardPerFieldToJson.description(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$RewardPerFieldToJson
                .description(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$RewardPerFieldToJson.description(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$RewardPerFieldToJson.description(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  RewardsQuery whereAmount({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  }) {
    return _$RewardsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$RewardFieldMap['amount']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$RewardPerFieldToJson.amount(isEqualTo as double)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$RewardPerFieldToJson.amount(isNotEqualTo as double)
            : null,
        isLessThan: isLessThan != null
            ? _$RewardPerFieldToJson.amount(isLessThan as double)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$RewardPerFieldToJson.amount(isLessThanOrEqualTo as double)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$RewardPerFieldToJson.amount(isGreaterThan as double)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$RewardPerFieldToJson.amount(isGreaterThanOrEqualTo as double)
            : null,
        whereIn: whereIn?.map((e) => _$RewardPerFieldToJson.amount(e)),
        whereNotIn: whereNotIn?.map((e) => _$RewardPerFieldToJson.amount(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  RewardsQuery wherePicturePath({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$RewardsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$RewardFieldMap['picturePath']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$RewardPerFieldToJson.picturePath(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$RewardPerFieldToJson.picturePath(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$RewardPerFieldToJson.picturePath(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$RewardPerFieldToJson.picturePath(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$RewardPerFieldToJson.picturePath(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$RewardPerFieldToJson
                .picturePath(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$RewardPerFieldToJson.picturePath(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$RewardPerFieldToJson.picturePath(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  RewardsQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    RewardsDocumentSnapshot? startAtDocument,
    RewardsDocumentSnapshot? endAtDocument,
    RewardsDocumentSnapshot? endBeforeDocument,
    RewardsDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$RewardsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  RewardsQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    RewardsDocumentSnapshot? startAtDocument,
    RewardsDocumentSnapshot? endAtDocument,
    RewardsDocumentSnapshot? endBeforeDocument,
    RewardsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$RewardsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  RewardsQuery orderByTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    RewardsDocumentSnapshot? startAtDocument,
    RewardsDocumentSnapshot? endAtDocument,
    RewardsDocumentSnapshot? endBeforeDocument,
    RewardsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$RewardFieldMap['title']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$RewardsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  RewardsQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    RewardsDocumentSnapshot? startAtDocument,
    RewardsDocumentSnapshot? endAtDocument,
    RewardsDocumentSnapshot? endBeforeDocument,
    RewardsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$RewardFieldMap['description']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$RewardsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  RewardsQuery orderByAmount({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    RewardsDocumentSnapshot? startAtDocument,
    RewardsDocumentSnapshot? endAtDocument,
    RewardsDocumentSnapshot? endBeforeDocument,
    RewardsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$RewardFieldMap['amount']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$RewardsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  RewardsQuery orderByPicturePath({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    RewardsDocumentSnapshot? startAtDocument,
    RewardsDocumentSnapshot? endAtDocument,
    RewardsDocumentSnapshot? endBeforeDocument,
    RewardsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$RewardFieldMap['picturePath']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$RewardsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$RewardsQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class RewardsDocumentSnapshot extends FirestoreDocumentSnapshot<Reward> {
  RewardsDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Reward> snapshot;

  @override
  RewardsDocumentReference get reference {
    return RewardsDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Reward? data;
}

class RewardsQuerySnapshot
    extends FirestoreQuerySnapshot<Reward, RewardsQueryDocumentSnapshot> {
  RewardsQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory RewardsQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Reward> snapshot,
  ) {
    final docs = snapshot.docs.map(RewardsQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        RewardsDocumentSnapshot._,
      );
    }).toList();

    return RewardsQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<RewardsDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    RewardsDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<RewardsDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Reward> snapshot;

  @override
  final List<RewardsQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<RewardsDocumentSnapshot>> docChanges;
}

class RewardsQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Reward>
    implements RewardsDocumentSnapshot {
  RewardsQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Reward> snapshot;

  @override
  final Reward data;

  @override
  RewardsDocumentReference get reference {
    return RewardsDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class TasksCollectionReference
    implements
        TasksQuery,
        FirestoreCollectionReference<Task, TasksQuerySnapshot> {
  factory TasksCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$TasksCollectionReference;

  static Task fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$TaskFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Task value,
    SetOptions? options,
  ) {
    return _$TaskToJson(value);
  }

  @override
  CollectionReference<Task> get reference;

  @override
  TasksDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<TasksDocumentReference> add(Task value);
}

class _$TasksCollectionReference extends _$TasksQuery
    implements TasksCollectionReference {
  factory _$TasksCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$TasksCollectionReference._(
      firestore.collection('tasks').withConverter(
            fromFirestore: TasksCollectionReference.fromFirestore,
            toFirestore: TasksCollectionReference.toFirestore,
          ),
    );
  }

  _$TasksCollectionReference._(
    CollectionReference<Task> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Task> get reference =>
      super.reference as CollectionReference<Task>;

  @override
  TasksDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return TasksDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<TasksDocumentReference> add(Task value) {
    return reference.add(value).then((ref) => TasksDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$TasksCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class TasksDocumentReference
    extends FirestoreDocumentReference<Task, TasksDocumentSnapshot> {
  factory TasksDocumentReference(DocumentReference<Task> reference) =
      _$TasksDocumentReference;

  DocumentReference<Task> get reference;

  /// A reference to the [TasksCollectionReference] containing this document.
  TasksCollectionReference get parent {
    return _$TasksCollectionReference(reference.firestore);
  }

  @override
  Stream<TasksDocumentSnapshot> snapshots();

  @override
  Future<TasksDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    Task model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue amountFieldValue,
    FieldValue picturePathFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    Task model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue amountFieldValue,
    FieldValue picturePathFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    Task model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue amountFieldValue,
    FieldValue picturePathFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String title,
    FieldValue titleFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    double amount,
    FieldValue amountFieldValue,
    String? picturePath,
    FieldValue picturePathFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String title,
    FieldValue titleFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    double amount,
    FieldValue amountFieldValue,
    String? picturePath,
    FieldValue picturePathFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String title,
    FieldValue titleFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    double amount,
    FieldValue amountFieldValue,
    String? picturePath,
    FieldValue picturePathFieldValue,
  });
}

class _$TasksDocumentReference
    extends FirestoreDocumentReference<Task, TasksDocumentSnapshot>
    implements TasksDocumentReference {
  _$TasksDocumentReference(this.reference);

  @override
  final DocumentReference<Task> reference;

  /// A reference to the [TasksCollectionReference] containing this document.
  TasksCollectionReference get parent {
    return _$TasksCollectionReference(reference.firestore);
  }

  @override
  Stream<TasksDocumentSnapshot> snapshots() {
    return reference.snapshots().map(TasksDocumentSnapshot._);
  }

  @override
  Future<TasksDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(TasksDocumentSnapshot._);
  }

  @override
  Future<TasksDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(TasksDocumentSnapshot._);
  }

  Future<void> set(
    Task model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? amountFieldValue,
    FieldValue? picturePathFieldValue,
  }) async {
    final json = {
      ..._$TaskToJson(model),
      if (titleFieldValue != null) _$TaskFieldMap['title']!: titleFieldValue,
      if (descriptionFieldValue != null)
        _$TaskFieldMap['description']!: descriptionFieldValue,
      if (amountFieldValue != null) _$TaskFieldMap['amount']!: amountFieldValue,
      if (picturePathFieldValue != null)
        _$TaskFieldMap['picturePath']!: picturePathFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Task model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? amountFieldValue,
    FieldValue? picturePathFieldValue,
  }) {
    final json = {
      ..._$TaskToJson(model),
      if (titleFieldValue != null) _$TaskFieldMap['title']!: titleFieldValue,
      if (descriptionFieldValue != null)
        _$TaskFieldMap['description']!: descriptionFieldValue,
      if (amountFieldValue != null) _$TaskFieldMap['amount']!: amountFieldValue,
      if (picturePathFieldValue != null)
        _$TaskFieldMap['picturePath']!: picturePathFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Task model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? amountFieldValue,
    FieldValue? picturePathFieldValue,
  }) {
    final json = {
      ..._$TaskToJson(model),
      if (titleFieldValue != null) _$TaskFieldMap['title']!: titleFieldValue,
      if (descriptionFieldValue != null)
        _$TaskFieldMap['description']!: descriptionFieldValue,
      if (amountFieldValue != null) _$TaskFieldMap['amount']!: amountFieldValue,
      if (picturePathFieldValue != null)
        _$TaskFieldMap['picturePath']!: picturePathFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? picturePath = _sentinel,
    FieldValue? picturePathFieldValue,
  }) async {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      picturePath == _sentinel || picturePathFieldValue == null,
      "Cannot specify both picturePath and picturePathFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$TaskFieldMap['title']!: _$TaskPerFieldToJson.title(title as String),
      if (titleFieldValue != null) _$TaskFieldMap['title']!: titleFieldValue,
      if (description != _sentinel)
        _$TaskFieldMap['description']!:
            _$TaskPerFieldToJson.description(description as String?),
      if (descriptionFieldValue != null)
        _$TaskFieldMap['description']!: descriptionFieldValue,
      if (amount != _sentinel)
        _$TaskFieldMap['amount']!:
            _$TaskPerFieldToJson.amount(amount as double),
      if (amountFieldValue != null) _$TaskFieldMap['amount']!: amountFieldValue,
      if (picturePath != _sentinel)
        _$TaskFieldMap['picturePath']!:
            _$TaskPerFieldToJson.picturePath(picturePath as String?),
      if (picturePathFieldValue != null)
        _$TaskFieldMap['picturePath']!: picturePathFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? picturePath = _sentinel,
    FieldValue? picturePathFieldValue,
  }) {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      picturePath == _sentinel || picturePathFieldValue == null,
      "Cannot specify both picturePath and picturePathFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$TaskFieldMap['title']!: _$TaskPerFieldToJson.title(title as String),
      if (titleFieldValue != null) _$TaskFieldMap['title']!: titleFieldValue,
      if (description != _sentinel)
        _$TaskFieldMap['description']!:
            _$TaskPerFieldToJson.description(description as String?),
      if (descriptionFieldValue != null)
        _$TaskFieldMap['description']!: descriptionFieldValue,
      if (amount != _sentinel)
        _$TaskFieldMap['amount']!:
            _$TaskPerFieldToJson.amount(amount as double),
      if (amountFieldValue != null) _$TaskFieldMap['amount']!: amountFieldValue,
      if (picturePath != _sentinel)
        _$TaskFieldMap['picturePath']!:
            _$TaskPerFieldToJson.picturePath(picturePath as String?),
      if (picturePathFieldValue != null)
        _$TaskFieldMap['picturePath']!: picturePathFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? picturePath = _sentinel,
    FieldValue? picturePathFieldValue,
  }) {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      picturePath == _sentinel || picturePathFieldValue == null,
      "Cannot specify both picturePath and picturePathFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$TaskFieldMap['title']!: _$TaskPerFieldToJson.title(title as String),
      if (titleFieldValue != null) _$TaskFieldMap['title']!: titleFieldValue,
      if (description != _sentinel)
        _$TaskFieldMap['description']!:
            _$TaskPerFieldToJson.description(description as String?),
      if (descriptionFieldValue != null)
        _$TaskFieldMap['description']!: descriptionFieldValue,
      if (amount != _sentinel)
        _$TaskFieldMap['amount']!:
            _$TaskPerFieldToJson.amount(amount as double),
      if (amountFieldValue != null) _$TaskFieldMap['amount']!: amountFieldValue,
      if (picturePath != _sentinel)
        _$TaskFieldMap['picturePath']!:
            _$TaskPerFieldToJson.picturePath(picturePath as String?),
      if (picturePathFieldValue != null)
        _$TaskFieldMap['picturePath']!: picturePathFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is TasksDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class TasksQuery implements QueryReference<Task, TasksQuerySnapshot> {
  @override
  TasksQuery limit(int limit);

  @override
  TasksQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  TasksQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  TasksQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  TasksQuery whereTitle({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  TasksQuery whereDescription({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  TasksQuery whereAmount({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  });

  TasksQuery wherePicturePath({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  TasksQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    TasksDocumentSnapshot? startAtDocument,
    TasksDocumentSnapshot? endAtDocument,
    TasksDocumentSnapshot? endBeforeDocument,
    TasksDocumentSnapshot? startAfterDocument,
  });

  TasksQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TasksDocumentSnapshot? startAtDocument,
    TasksDocumentSnapshot? endAtDocument,
    TasksDocumentSnapshot? endBeforeDocument,
    TasksDocumentSnapshot? startAfterDocument,
  });

  TasksQuery orderByTitle({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TasksDocumentSnapshot? startAtDocument,
    TasksDocumentSnapshot? endAtDocument,
    TasksDocumentSnapshot? endBeforeDocument,
    TasksDocumentSnapshot? startAfterDocument,
  });

  TasksQuery orderByDescription({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    TasksDocumentSnapshot? startAtDocument,
    TasksDocumentSnapshot? endAtDocument,
    TasksDocumentSnapshot? endBeforeDocument,
    TasksDocumentSnapshot? startAfterDocument,
  });

  TasksQuery orderByAmount({
    bool descending = false,
    double startAt,
    double startAfter,
    double endAt,
    double endBefore,
    TasksDocumentSnapshot? startAtDocument,
    TasksDocumentSnapshot? endAtDocument,
    TasksDocumentSnapshot? endBeforeDocument,
    TasksDocumentSnapshot? startAfterDocument,
  });

  TasksQuery orderByPicturePath({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    TasksDocumentSnapshot? startAtDocument,
    TasksDocumentSnapshot? endAtDocument,
    TasksDocumentSnapshot? endBeforeDocument,
    TasksDocumentSnapshot? startAfterDocument,
  });
}

class _$TasksQuery extends QueryReference<Task, TasksQuerySnapshot>
    implements TasksQuery {
  _$TasksQuery(
    this._collection, {
    required Query<Task> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<TasksQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(TasksQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<TasksQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(TasksQuerySnapshot._fromQuerySnapshot);
  }

  @override
  TasksQuery limit(int limit) {
    return _$TasksQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TasksQuery limitToLast(int limit) {
    return _$TasksQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TasksQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$TasksQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TasksQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$TasksQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TasksQuery whereTitle({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$TasksQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TaskFieldMap['title']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TaskPerFieldToJson.title(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TaskPerFieldToJson.title(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$TaskPerFieldToJson.title(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TaskPerFieldToJson.title(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TaskPerFieldToJson.title(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TaskPerFieldToJson.title(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$TaskPerFieldToJson.title(e)),
        whereNotIn: whereNotIn?.map((e) => _$TaskPerFieldToJson.title(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TasksQuery whereDescription({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$TasksQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TaskFieldMap['description']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TaskPerFieldToJson.description(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TaskPerFieldToJson.description(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$TaskPerFieldToJson.description(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TaskPerFieldToJson.description(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TaskPerFieldToJson.description(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TaskPerFieldToJson
                .description(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$TaskPerFieldToJson.description(e)),
        whereNotIn: whereNotIn?.map((e) => _$TaskPerFieldToJson.description(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TasksQuery whereAmount({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  }) {
    return _$TasksQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TaskFieldMap['amount']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TaskPerFieldToJson.amount(isEqualTo as double)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TaskPerFieldToJson.amount(isNotEqualTo as double)
            : null,
        isLessThan: isLessThan != null
            ? _$TaskPerFieldToJson.amount(isLessThan as double)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TaskPerFieldToJson.amount(isLessThanOrEqualTo as double)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TaskPerFieldToJson.amount(isGreaterThan as double)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TaskPerFieldToJson.amount(isGreaterThanOrEqualTo as double)
            : null,
        whereIn: whereIn?.map((e) => _$TaskPerFieldToJson.amount(e)),
        whereNotIn: whereNotIn?.map((e) => _$TaskPerFieldToJson.amount(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TasksQuery wherePicturePath({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$TasksQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TaskFieldMap['picturePath']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TaskPerFieldToJson.picturePath(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TaskPerFieldToJson.picturePath(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$TaskPerFieldToJson.picturePath(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TaskPerFieldToJson.picturePath(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TaskPerFieldToJson.picturePath(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TaskPerFieldToJson
                .picturePath(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$TaskPerFieldToJson.picturePath(e)),
        whereNotIn: whereNotIn?.map((e) => _$TaskPerFieldToJson.picturePath(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TasksQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TasksDocumentSnapshot? startAtDocument,
    TasksDocumentSnapshot? endAtDocument,
    TasksDocumentSnapshot? endBeforeDocument,
    TasksDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TasksQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TasksQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TasksDocumentSnapshot? startAtDocument,
    TasksDocumentSnapshot? endAtDocument,
    TasksDocumentSnapshot? endBeforeDocument,
    TasksDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TasksQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TasksQuery orderByTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TasksDocumentSnapshot? startAtDocument,
    TasksDocumentSnapshot? endAtDocument,
    TasksDocumentSnapshot? endBeforeDocument,
    TasksDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$TaskFieldMap['title']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TasksQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TasksQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TasksDocumentSnapshot? startAtDocument,
    TasksDocumentSnapshot? endAtDocument,
    TasksDocumentSnapshot? endBeforeDocument,
    TasksDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$TaskFieldMap['description']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TasksQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TasksQuery orderByAmount({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TasksDocumentSnapshot? startAtDocument,
    TasksDocumentSnapshot? endAtDocument,
    TasksDocumentSnapshot? endBeforeDocument,
    TasksDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$TaskFieldMap['amount']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TasksQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TasksQuery orderByPicturePath({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TasksDocumentSnapshot? startAtDocument,
    TasksDocumentSnapshot? endAtDocument,
    TasksDocumentSnapshot? endBeforeDocument,
    TasksDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$TaskFieldMap['picturePath']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TasksQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$TasksQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class TasksDocumentSnapshot extends FirestoreDocumentSnapshot<Task> {
  TasksDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Task> snapshot;

  @override
  TasksDocumentReference get reference {
    return TasksDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Task? data;
}

class TasksQuerySnapshot
    extends FirestoreQuerySnapshot<Task, TasksQueryDocumentSnapshot> {
  TasksQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory TasksQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Task> snapshot,
  ) {
    final docs = snapshot.docs.map(TasksQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        TasksDocumentSnapshot._,
      );
    }).toList();

    return TasksQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<TasksDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    TasksDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<TasksDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Task> snapshot;

  @override
  final List<TasksQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<TasksDocumentSnapshot>> docChanges;
}

class TasksQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Task>
    implements TasksDocumentSnapshot {
  TasksQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Task> snapshot;

  @override
  final Task data;

  @override
  TasksDocumentReference get reference {
    return TasksDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class AccomodationPostsCollectionReference
    implements
        AccomodationPostsQuery,
        FirestoreCollectionReference<AccomodationPost,
            AccomodationPostsQuerySnapshot> {
  factory AccomodationPostsCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$AccomodationPostsCollectionReference;

  static AccomodationPost fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$AccomodationPostFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    AccomodationPost value,
    SetOptions? options,
  ) {
    return _$AccomodationPostToJson(value);
  }

  @override
  CollectionReference<AccomodationPost> get reference;

  @override
  AccomodationPostsDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<AccomodationPostsDocumentReference> add(AccomodationPost value);
}

class _$AccomodationPostsCollectionReference extends _$AccomodationPostsQuery
    implements AccomodationPostsCollectionReference {
  factory _$AccomodationPostsCollectionReference(
      [FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$AccomodationPostsCollectionReference._(
      firestore.collection('accomodationposts').withConverter(
            fromFirestore: AccomodationPostsCollectionReference.fromFirestore,
            toFirestore: AccomodationPostsCollectionReference.toFirestore,
          ),
    );
  }

  _$AccomodationPostsCollectionReference._(
    CollectionReference<AccomodationPost> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<AccomodationPost> get reference =>
      super.reference as CollectionReference<AccomodationPost>;

  @override
  AccomodationPostsDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return AccomodationPostsDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<AccomodationPostsDocumentReference> add(AccomodationPost value) {
    return reference
        .add(value)
        .then((ref) => AccomodationPostsDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$AccomodationPostsCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class AccomodationPostsDocumentReference
    extends FirestoreDocumentReference<AccomodationPost,
        AccomodationPostsDocumentSnapshot> {
  factory AccomodationPostsDocumentReference(
          DocumentReference<AccomodationPost> reference) =
      _$AccomodationPostsDocumentReference;

  DocumentReference<AccomodationPost> get reference;

  /// A reference to the [AccomodationPostsCollectionReference] containing this document.
  AccomodationPostsCollectionReference get parent {
    return _$AccomodationPostsCollectionReference(reference.firestore);
  }

  @override
  Stream<AccomodationPostsDocumentSnapshot> snapshots();

  @override
  Future<AccomodationPostsDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    AccomodationPost model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue cityFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue amountFieldValue,
    FieldValue ratingFieldValue,
    FieldValue picturePathFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    AccomodationPost model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue cityFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue amountFieldValue,
    FieldValue ratingFieldValue,
    FieldValue picturePathFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    AccomodationPost model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue cityFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue amountFieldValue,
    FieldValue ratingFieldValue,
    FieldValue picturePathFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String title,
    FieldValue titleFieldValue,
    String city,
    FieldValue cityFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    double amount,
    FieldValue amountFieldValue,
    int rating,
    FieldValue ratingFieldValue,
    String? picturePath,
    FieldValue picturePathFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String title,
    FieldValue titleFieldValue,
    String city,
    FieldValue cityFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    double amount,
    FieldValue amountFieldValue,
    int rating,
    FieldValue ratingFieldValue,
    String? picturePath,
    FieldValue picturePathFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String title,
    FieldValue titleFieldValue,
    String city,
    FieldValue cityFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    double amount,
    FieldValue amountFieldValue,
    int rating,
    FieldValue ratingFieldValue,
    String? picturePath,
    FieldValue picturePathFieldValue,
  });
}

class _$AccomodationPostsDocumentReference extends FirestoreDocumentReference<
        AccomodationPost, AccomodationPostsDocumentSnapshot>
    implements AccomodationPostsDocumentReference {
  _$AccomodationPostsDocumentReference(this.reference);

  @override
  final DocumentReference<AccomodationPost> reference;

  /// A reference to the [AccomodationPostsCollectionReference] containing this document.
  AccomodationPostsCollectionReference get parent {
    return _$AccomodationPostsCollectionReference(reference.firestore);
  }

  @override
  Stream<AccomodationPostsDocumentSnapshot> snapshots() {
    return reference.snapshots().map(AccomodationPostsDocumentSnapshot._);
  }

  @override
  Future<AccomodationPostsDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(AccomodationPostsDocumentSnapshot._);
  }

  @override
  Future<AccomodationPostsDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(AccomodationPostsDocumentSnapshot._);
  }

  Future<void> set(
    AccomodationPost model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? cityFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? amountFieldValue,
    FieldValue? ratingFieldValue,
    FieldValue? picturePathFieldValue,
  }) async {
    final json = {
      ..._$AccomodationPostToJson(model),
      if (titleFieldValue != null)
        _$AccomodationPostFieldMap['title']!: titleFieldValue,
      if (cityFieldValue != null)
        _$AccomodationPostFieldMap['city']!: cityFieldValue,
      if (descriptionFieldValue != null)
        _$AccomodationPostFieldMap['description']!: descriptionFieldValue,
      if (amountFieldValue != null)
        _$AccomodationPostFieldMap['amount']!: amountFieldValue,
      if (ratingFieldValue != null)
        _$AccomodationPostFieldMap['rating']!: ratingFieldValue,
      if (picturePathFieldValue != null)
        _$AccomodationPostFieldMap['picturePath']!: picturePathFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    AccomodationPost model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? cityFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? amountFieldValue,
    FieldValue? ratingFieldValue,
    FieldValue? picturePathFieldValue,
  }) {
    final json = {
      ..._$AccomodationPostToJson(model),
      if (titleFieldValue != null)
        _$AccomodationPostFieldMap['title']!: titleFieldValue,
      if (cityFieldValue != null)
        _$AccomodationPostFieldMap['city']!: cityFieldValue,
      if (descriptionFieldValue != null)
        _$AccomodationPostFieldMap['description']!: descriptionFieldValue,
      if (amountFieldValue != null)
        _$AccomodationPostFieldMap['amount']!: amountFieldValue,
      if (ratingFieldValue != null)
        _$AccomodationPostFieldMap['rating']!: ratingFieldValue,
      if (picturePathFieldValue != null)
        _$AccomodationPostFieldMap['picturePath']!: picturePathFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    AccomodationPost model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? cityFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? amountFieldValue,
    FieldValue? ratingFieldValue,
    FieldValue? picturePathFieldValue,
  }) {
    final json = {
      ..._$AccomodationPostToJson(model),
      if (titleFieldValue != null)
        _$AccomodationPostFieldMap['title']!: titleFieldValue,
      if (cityFieldValue != null)
        _$AccomodationPostFieldMap['city']!: cityFieldValue,
      if (descriptionFieldValue != null)
        _$AccomodationPostFieldMap['description']!: descriptionFieldValue,
      if (amountFieldValue != null)
        _$AccomodationPostFieldMap['amount']!: amountFieldValue,
      if (ratingFieldValue != null)
        _$AccomodationPostFieldMap['rating']!: ratingFieldValue,
      if (picturePathFieldValue != null)
        _$AccomodationPostFieldMap['picturePath']!: picturePathFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? city = _sentinel,
    FieldValue? cityFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? rating = _sentinel,
    FieldValue? ratingFieldValue,
    Object? picturePath = _sentinel,
    FieldValue? picturePathFieldValue,
  }) async {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      city == _sentinel || cityFieldValue == null,
      "Cannot specify both city and cityFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      rating == _sentinel || ratingFieldValue == null,
      "Cannot specify both rating and ratingFieldValue",
    );
    assert(
      picturePath == _sentinel || picturePathFieldValue == null,
      "Cannot specify both picturePath and picturePathFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$AccomodationPostFieldMap['title']!:
            _$AccomodationPostPerFieldToJson.title(title as String),
      if (titleFieldValue != null)
        _$AccomodationPostFieldMap['title']!: titleFieldValue,
      if (city != _sentinel)
        _$AccomodationPostFieldMap['city']!:
            _$AccomodationPostPerFieldToJson.city(city as String),
      if (cityFieldValue != null)
        _$AccomodationPostFieldMap['city']!: cityFieldValue,
      if (description != _sentinel)
        _$AccomodationPostFieldMap['description']!:
            _$AccomodationPostPerFieldToJson
                .description(description as String?),
      if (descriptionFieldValue != null)
        _$AccomodationPostFieldMap['description']!: descriptionFieldValue,
      if (amount != _sentinel)
        _$AccomodationPostFieldMap['amount']!:
            _$AccomodationPostPerFieldToJson.amount(amount as double),
      if (amountFieldValue != null)
        _$AccomodationPostFieldMap['amount']!: amountFieldValue,
      if (rating != _sentinel)
        _$AccomodationPostFieldMap['rating']!:
            _$AccomodationPostPerFieldToJson.rating(rating as int),
      if (ratingFieldValue != null)
        _$AccomodationPostFieldMap['rating']!: ratingFieldValue,
      if (picturePath != _sentinel)
        _$AccomodationPostFieldMap['picturePath']!:
            _$AccomodationPostPerFieldToJson
                .picturePath(picturePath as String?),
      if (picturePathFieldValue != null)
        _$AccomodationPostFieldMap['picturePath']!: picturePathFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? city = _sentinel,
    FieldValue? cityFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? rating = _sentinel,
    FieldValue? ratingFieldValue,
    Object? picturePath = _sentinel,
    FieldValue? picturePathFieldValue,
  }) {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      city == _sentinel || cityFieldValue == null,
      "Cannot specify both city and cityFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      rating == _sentinel || ratingFieldValue == null,
      "Cannot specify both rating and ratingFieldValue",
    );
    assert(
      picturePath == _sentinel || picturePathFieldValue == null,
      "Cannot specify both picturePath and picturePathFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$AccomodationPostFieldMap['title']!:
            _$AccomodationPostPerFieldToJson.title(title as String),
      if (titleFieldValue != null)
        _$AccomodationPostFieldMap['title']!: titleFieldValue,
      if (city != _sentinel)
        _$AccomodationPostFieldMap['city']!:
            _$AccomodationPostPerFieldToJson.city(city as String),
      if (cityFieldValue != null)
        _$AccomodationPostFieldMap['city']!: cityFieldValue,
      if (description != _sentinel)
        _$AccomodationPostFieldMap['description']!:
            _$AccomodationPostPerFieldToJson
                .description(description as String?),
      if (descriptionFieldValue != null)
        _$AccomodationPostFieldMap['description']!: descriptionFieldValue,
      if (amount != _sentinel)
        _$AccomodationPostFieldMap['amount']!:
            _$AccomodationPostPerFieldToJson.amount(amount as double),
      if (amountFieldValue != null)
        _$AccomodationPostFieldMap['amount']!: amountFieldValue,
      if (rating != _sentinel)
        _$AccomodationPostFieldMap['rating']!:
            _$AccomodationPostPerFieldToJson.rating(rating as int),
      if (ratingFieldValue != null)
        _$AccomodationPostFieldMap['rating']!: ratingFieldValue,
      if (picturePath != _sentinel)
        _$AccomodationPostFieldMap['picturePath']!:
            _$AccomodationPostPerFieldToJson
                .picturePath(picturePath as String?),
      if (picturePathFieldValue != null)
        _$AccomodationPostFieldMap['picturePath']!: picturePathFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? city = _sentinel,
    FieldValue? cityFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? rating = _sentinel,
    FieldValue? ratingFieldValue,
    Object? picturePath = _sentinel,
    FieldValue? picturePathFieldValue,
  }) {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      city == _sentinel || cityFieldValue == null,
      "Cannot specify both city and cityFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      rating == _sentinel || ratingFieldValue == null,
      "Cannot specify both rating and ratingFieldValue",
    );
    assert(
      picturePath == _sentinel || picturePathFieldValue == null,
      "Cannot specify both picturePath and picturePathFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$AccomodationPostFieldMap['title']!:
            _$AccomodationPostPerFieldToJson.title(title as String),
      if (titleFieldValue != null)
        _$AccomodationPostFieldMap['title']!: titleFieldValue,
      if (city != _sentinel)
        _$AccomodationPostFieldMap['city']!:
            _$AccomodationPostPerFieldToJson.city(city as String),
      if (cityFieldValue != null)
        _$AccomodationPostFieldMap['city']!: cityFieldValue,
      if (description != _sentinel)
        _$AccomodationPostFieldMap['description']!:
            _$AccomodationPostPerFieldToJson
                .description(description as String?),
      if (descriptionFieldValue != null)
        _$AccomodationPostFieldMap['description']!: descriptionFieldValue,
      if (amount != _sentinel)
        _$AccomodationPostFieldMap['amount']!:
            _$AccomodationPostPerFieldToJson.amount(amount as double),
      if (amountFieldValue != null)
        _$AccomodationPostFieldMap['amount']!: amountFieldValue,
      if (rating != _sentinel)
        _$AccomodationPostFieldMap['rating']!:
            _$AccomodationPostPerFieldToJson.rating(rating as int),
      if (ratingFieldValue != null)
        _$AccomodationPostFieldMap['rating']!: ratingFieldValue,
      if (picturePath != _sentinel)
        _$AccomodationPostFieldMap['picturePath']!:
            _$AccomodationPostPerFieldToJson
                .picturePath(picturePath as String?),
      if (picturePathFieldValue != null)
        _$AccomodationPostFieldMap['picturePath']!: picturePathFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is AccomodationPostsDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class AccomodationPostsQuery
    implements
        QueryReference<AccomodationPost, AccomodationPostsQuerySnapshot> {
  @override
  AccomodationPostsQuery limit(int limit);

  @override
  AccomodationPostsQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  AccomodationPostsQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  AccomodationPostsQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  AccomodationPostsQuery whereTitle({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  AccomodationPostsQuery whereCity({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  AccomodationPostsQuery whereDescription({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  AccomodationPostsQuery whereAmount({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  });

  AccomodationPostsQuery whereRating({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
    bool? isNull,
  });

  AccomodationPostsQuery wherePicturePath({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  AccomodationPostsQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    AccomodationPostsDocumentSnapshot? startAtDocument,
    AccomodationPostsDocumentSnapshot? endAtDocument,
    AccomodationPostsDocumentSnapshot? endBeforeDocument,
    AccomodationPostsDocumentSnapshot? startAfterDocument,
  });

  AccomodationPostsQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    AccomodationPostsDocumentSnapshot? startAtDocument,
    AccomodationPostsDocumentSnapshot? endAtDocument,
    AccomodationPostsDocumentSnapshot? endBeforeDocument,
    AccomodationPostsDocumentSnapshot? startAfterDocument,
  });

  AccomodationPostsQuery orderByTitle({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    AccomodationPostsDocumentSnapshot? startAtDocument,
    AccomodationPostsDocumentSnapshot? endAtDocument,
    AccomodationPostsDocumentSnapshot? endBeforeDocument,
    AccomodationPostsDocumentSnapshot? startAfterDocument,
  });

  AccomodationPostsQuery orderByCity({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    AccomodationPostsDocumentSnapshot? startAtDocument,
    AccomodationPostsDocumentSnapshot? endAtDocument,
    AccomodationPostsDocumentSnapshot? endBeforeDocument,
    AccomodationPostsDocumentSnapshot? startAfterDocument,
  });

  AccomodationPostsQuery orderByDescription({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    AccomodationPostsDocumentSnapshot? startAtDocument,
    AccomodationPostsDocumentSnapshot? endAtDocument,
    AccomodationPostsDocumentSnapshot? endBeforeDocument,
    AccomodationPostsDocumentSnapshot? startAfterDocument,
  });

  AccomodationPostsQuery orderByAmount({
    bool descending = false,
    double startAt,
    double startAfter,
    double endAt,
    double endBefore,
    AccomodationPostsDocumentSnapshot? startAtDocument,
    AccomodationPostsDocumentSnapshot? endAtDocument,
    AccomodationPostsDocumentSnapshot? endBeforeDocument,
    AccomodationPostsDocumentSnapshot? startAfterDocument,
  });

  AccomodationPostsQuery orderByRating({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    AccomodationPostsDocumentSnapshot? startAtDocument,
    AccomodationPostsDocumentSnapshot? endAtDocument,
    AccomodationPostsDocumentSnapshot? endBeforeDocument,
    AccomodationPostsDocumentSnapshot? startAfterDocument,
  });

  AccomodationPostsQuery orderByPicturePath({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    AccomodationPostsDocumentSnapshot? startAtDocument,
    AccomodationPostsDocumentSnapshot? endAtDocument,
    AccomodationPostsDocumentSnapshot? endBeforeDocument,
    AccomodationPostsDocumentSnapshot? startAfterDocument,
  });
}

class _$AccomodationPostsQuery
    extends QueryReference<AccomodationPost, AccomodationPostsQuerySnapshot>
    implements AccomodationPostsQuery {
  _$AccomodationPostsQuery(
    this._collection, {
    required Query<AccomodationPost> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<AccomodationPostsQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(AccomodationPostsQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<AccomodationPostsQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(AccomodationPostsQuerySnapshot._fromQuerySnapshot);
  }

  @override
  AccomodationPostsQuery limit(int limit) {
    return _$AccomodationPostsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AccomodationPostsQuery limitToLast(int limit) {
    return _$AccomodationPostsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AccomodationPostsQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$AccomodationPostsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AccomodationPostsQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$AccomodationPostsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AccomodationPostsQuery whereTitle({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$AccomodationPostsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AccomodationPostFieldMap['title']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson.title(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson.title(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$AccomodationPostPerFieldToJson.title(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .title(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AccomodationPostPerFieldToJson.title(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .title(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$AccomodationPostPerFieldToJson.title(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AccomodationPostPerFieldToJson.title(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AccomodationPostsQuery whereCity({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$AccomodationPostsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AccomodationPostFieldMap['city']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson.city(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson.city(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$AccomodationPostPerFieldToJson.city(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .city(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AccomodationPostPerFieldToJson.city(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .city(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$AccomodationPostPerFieldToJson.city(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AccomodationPostPerFieldToJson.city(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AccomodationPostsQuery whereDescription({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$AccomodationPostsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AccomodationPostFieldMap['description']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson.description(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson
                .description(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$AccomodationPostPerFieldToJson
                .description(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .description(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AccomodationPostPerFieldToJson
                .description(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .description(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$AccomodationPostPerFieldToJson.description(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$AccomodationPostPerFieldToJson.description(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AccomodationPostsQuery whereAmount({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  }) {
    return _$AccomodationPostsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AccomodationPostFieldMap['amount']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson.amount(isEqualTo as double)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson.amount(isNotEqualTo as double)
            : null,
        isLessThan: isLessThan != null
            ? _$AccomodationPostPerFieldToJson.amount(isLessThan as double)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .amount(isLessThanOrEqualTo as double)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AccomodationPostPerFieldToJson.amount(isGreaterThan as double)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .amount(isGreaterThanOrEqualTo as double)
            : null,
        whereIn:
            whereIn?.map((e) => _$AccomodationPostPerFieldToJson.amount(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AccomodationPostPerFieldToJson.amount(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AccomodationPostsQuery whereRating({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
    bool? isNull,
  }) {
    return _$AccomodationPostsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AccomodationPostFieldMap['rating']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson.rating(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson.rating(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$AccomodationPostPerFieldToJson.rating(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .rating(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AccomodationPostPerFieldToJson.rating(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .rating(isGreaterThanOrEqualTo as int)
            : null,
        whereIn:
            whereIn?.map((e) => _$AccomodationPostPerFieldToJson.rating(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AccomodationPostPerFieldToJson.rating(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AccomodationPostsQuery wherePicturePath({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$AccomodationPostsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AccomodationPostFieldMap['picturePath']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson.picturePath(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AccomodationPostPerFieldToJson
                .picturePath(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$AccomodationPostPerFieldToJson
                .picturePath(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .picturePath(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AccomodationPostPerFieldToJson
                .picturePath(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AccomodationPostPerFieldToJson
                .picturePath(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$AccomodationPostPerFieldToJson.picturePath(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$AccomodationPostPerFieldToJson.picturePath(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AccomodationPostsQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AccomodationPostsDocumentSnapshot? startAtDocument,
    AccomodationPostsDocumentSnapshot? endAtDocument,
    AccomodationPostsDocumentSnapshot? endBeforeDocument,
    AccomodationPostsDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AccomodationPostsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AccomodationPostsQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AccomodationPostsDocumentSnapshot? startAtDocument,
    AccomodationPostsDocumentSnapshot? endAtDocument,
    AccomodationPostsDocumentSnapshot? endBeforeDocument,
    AccomodationPostsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AccomodationPostsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AccomodationPostsQuery orderByTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AccomodationPostsDocumentSnapshot? startAtDocument,
    AccomodationPostsDocumentSnapshot? endAtDocument,
    AccomodationPostsDocumentSnapshot? endBeforeDocument,
    AccomodationPostsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AccomodationPostFieldMap['title']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AccomodationPostsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AccomodationPostsQuery orderByCity({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AccomodationPostsDocumentSnapshot? startAtDocument,
    AccomodationPostsDocumentSnapshot? endAtDocument,
    AccomodationPostsDocumentSnapshot? endBeforeDocument,
    AccomodationPostsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AccomodationPostFieldMap['city']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AccomodationPostsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AccomodationPostsQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AccomodationPostsDocumentSnapshot? startAtDocument,
    AccomodationPostsDocumentSnapshot? endAtDocument,
    AccomodationPostsDocumentSnapshot? endBeforeDocument,
    AccomodationPostsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$AccomodationPostFieldMap['description']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AccomodationPostsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AccomodationPostsQuery orderByAmount({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AccomodationPostsDocumentSnapshot? startAtDocument,
    AccomodationPostsDocumentSnapshot? endAtDocument,
    AccomodationPostsDocumentSnapshot? endBeforeDocument,
    AccomodationPostsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AccomodationPostFieldMap['amount']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AccomodationPostsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AccomodationPostsQuery orderByRating({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AccomodationPostsDocumentSnapshot? startAtDocument,
    AccomodationPostsDocumentSnapshot? endAtDocument,
    AccomodationPostsDocumentSnapshot? endBeforeDocument,
    AccomodationPostsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AccomodationPostFieldMap['rating']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AccomodationPostsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AccomodationPostsQuery orderByPicturePath({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AccomodationPostsDocumentSnapshot? startAtDocument,
    AccomodationPostsDocumentSnapshot? endAtDocument,
    AccomodationPostsDocumentSnapshot? endBeforeDocument,
    AccomodationPostsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$AccomodationPostFieldMap['picturePath']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AccomodationPostsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$AccomodationPostsQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class AccomodationPostsDocumentSnapshot
    extends FirestoreDocumentSnapshot<AccomodationPost> {
  AccomodationPostsDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<AccomodationPost> snapshot;

  @override
  AccomodationPostsDocumentReference get reference {
    return AccomodationPostsDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final AccomodationPost? data;
}

class AccomodationPostsQuerySnapshot extends FirestoreQuerySnapshot<
    AccomodationPost, AccomodationPostsQueryDocumentSnapshot> {
  AccomodationPostsQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory AccomodationPostsQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<AccomodationPost> snapshot,
  ) {
    final docs =
        snapshot.docs.map(AccomodationPostsQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        AccomodationPostsDocumentSnapshot._,
      );
    }).toList();

    return AccomodationPostsQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<AccomodationPostsDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    AccomodationPostsDocumentSnapshot Function(DocumentSnapshot<T> doc)
        decodeDoc,
  ) {
    return FirestoreDocumentChange<AccomodationPostsDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<AccomodationPost> snapshot;

  @override
  final List<AccomodationPostsQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<AccomodationPostsDocumentSnapshot>>
      docChanges;
}

class AccomodationPostsQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<AccomodationPost>
    implements AccomodationPostsDocumentSnapshot {
  AccomodationPostsQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<AccomodationPost> snapshot;

  @override
  final AccomodationPost data;

  @override
  AccomodationPostsDocumentReference get reference {
    return AccomodationPostsDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
    );

const _$UserFieldMap = <String, String>{
  'firstName': 'firstName',
  'lastName': 'lastName',
  'email': 'email',
};

// ignore: unused_element
abstract class _$UserPerFieldToJson {
  // ignore: unused_element
  static Object? firstName(String instance) => instance;
  // ignore: unused_element
  static Object? lastName(String instance) => instance;
  // ignore: unused_element
  static Object? email(String instance) => instance;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
    };

AccomodationPost _$AccomodationPostFromJson(Map<String, dynamic> json) =>
    AccomodationPost(
      title: json['title'] as String,
      city: json['city'] as String,
      description: json['description'] as String?,
      amount: (json['amount'] as num).toDouble(),
      rating: (json['rating'] as num).toInt(),
      picturePath: json['picturePath'] as String?,
    );

const _$AccomodationPostFieldMap = <String, String>{
  'title': 'title',
  'city': 'city',
  'description': 'description',
  'amount': 'amount',
  'rating': 'rating',
  'picturePath': 'picturePath',
};

// ignore: unused_element
abstract class _$AccomodationPostPerFieldToJson {
  // ignore: unused_element
  static Object? title(String instance) => instance;
  // ignore: unused_element
  static Object? city(String instance) => instance;
  // ignore: unused_element
  static Object? description(String? instance) => instance;
  // ignore: unused_element
  static Object? amount(double instance) => instance;
  // ignore: unused_element
  static Object? rating(int instance) => instance;
  // ignore: unused_element
  static Object? picturePath(String? instance) => instance;
}

Map<String, dynamic> _$AccomodationPostToJson(AccomodationPost instance) =>
    <String, dynamic>{
      'title': instance.title,
      'city': instance.city,
      'description': instance.description,
      'amount': instance.amount,
      'rating': instance.rating,
      'picturePath': instance.picturePath,
    };

Reward _$RewardFromJson(Map<String, dynamic> json) => Reward(
      title: json['title'] as String,
      description: json['description'] as String?,
      amount: (json['amount'] as num).toDouble(),
      picturePath: json['picturePath'] as String?,
    );

const _$RewardFieldMap = <String, String>{
  'title': 'title',
  'description': 'description',
  'amount': 'amount',
  'picturePath': 'picturePath',
};

// ignore: unused_element
abstract class _$RewardPerFieldToJson {
  // ignore: unused_element
  static Object? title(String instance) => instance;
  // ignore: unused_element
  static Object? description(String? instance) => instance;
  // ignore: unused_element
  static Object? amount(double instance) => instance;
  // ignore: unused_element
  static Object? picturePath(String? instance) => instance;
}

Map<String, dynamic> _$RewardToJson(Reward instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'amount': instance.amount,
      'picturePath': instance.picturePath,
    };

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
      title: json['title'] as String,
      description: json['description'] as String?,
      amount: (json['amount'] as num).toDouble(),
      picturePath: json['picturePath'] as String?,
    );

const _$TaskFieldMap = <String, String>{
  'title': 'title',
  'description': 'description',
  'amount': 'amount',
  'picturePath': 'picturePath',
};

// ignore: unused_element
abstract class _$TaskPerFieldToJson {
  // ignore: unused_element
  static Object? title(String instance) => instance;
  // ignore: unused_element
  static Object? description(String? instance) => instance;
  // ignore: unused_element
  static Object? amount(double instance) => instance;
  // ignore: unused_element
  static Object? picturePath(String? instance) => instance;
}

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'amount': instance.amount,
      'picturePath': instance.picturePath,
    };
