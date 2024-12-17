import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Fake Firestore test', () async {
    final fakeFirestore = FakeFirebaseFirestore();

    // Ajouter un utilisateur simulé
    await fakeFirestore.collection('users').add({
      'firstName': 'Jane',
      'lastName': 'Doe',
      'email': 'jane.doe@example.com',
    });

    // Vérifier que le document est bien ajouté
    final snapshot = await fakeFirestore.collection('users').get();
    expect(snapshot.docs.length, 1);
    expect(snapshot.docs.first['firstName'], 'Jane');
  });
}
