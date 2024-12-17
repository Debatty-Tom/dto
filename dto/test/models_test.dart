import 'package:flutter_test/flutter_test.dart';
import 'package:dto/models.dart';


void main() {
  group('DTO Tests', () {
    // Test pour User DTO
    test('User serialization/deserialization', () {
      const user = User(
        firstName: 'John',
        lastName: 'Doe',
        email: 'john.doe@example.com',
      );

      // Conversion en Map
      final userMap = user.toJson();
      expect(userMap, {
        'firstName': 'John',
        'lastName': 'Doe',
        'email': 'john.doe@example.com',
      });

      // Reconvertir en objet depuis Map
      final userFromMap = User.fromJson(userMap);
      expect(userFromMap.firstName, 'John');
      expect(userFromMap.lastName, 'Doe');
      expect(userFromMap.email, 'john.doe@example.com');
    });

    // Test pour AccomodationPost DTO
    test('AccomodationPost serialization/deserialization', () {
      const accomodationPost = AccomodationPost(
        title: 'Luxury Villa',
        city: 'Paris',
        description: 'A luxurious villa in the heart of Paris.',
        amount: 200.0,
        rating: 5,
        picturePath: '/images/villa.jpg',
      );

      // Conversion en Map
      final postMap = accomodationPost.toJson();
      expect(postMap, {
        'title': 'Luxury Villa',
        'city': 'Paris',
        'description': 'A luxurious villa in the heart of Paris.',
        'amount': 200.0,
        'rating': 5,
        'picturePath': '/images/villa.jpg',
      });

      // Reconvertir en objet depuis Map
      final postFromMap = AccomodationPost.fromJson(postMap);
      expect(postFromMap.title, 'Luxury Villa');
      expect(postFromMap.city, 'Paris');
      expect(postFromMap.amount, 200.0);
      expect(postFromMap.rating, 5);
      expect(postFromMap.picturePath, '/images/villa.jpg');
    });

    // Test pour Reward DTO
    test('Reward serialization/deserialization', () {
      const reward = Reward(
        title: 'Gold Membership',
        description: 'Access to exclusive features.',
        amount: 50.0,
        picturePath: '/images/gold.png',
      );

      // Conversion en Map
      final rewardMap = reward.toJson();
      expect(rewardMap, {
        'title': 'Gold Membership',
        'description': 'Access to exclusive features.',
        'amount': 50.0,
        'picturePath': '/images/gold.png',
      });

      // Reconvertir en objet depuis Map
      final rewardFromMap = Reward.fromJson(rewardMap);
      expect(rewardFromMap.title, 'Gold Membership');
      expect(rewardFromMap.amount, 50.0);
      expect(rewardFromMap.picturePath, '/images/gold.png');
    });

    // Test pour Task DTO
    test('Task serialization/deserialization', () {
      const task = Task(
        title: 'Complete Profile',
        description: 'Add all your personal details.',
        amount: 10.0,
        picturePath: '/images/profile.png',
      );

      // Conversion en Map
      final taskMap = task.toJson();
      expect(taskMap, {
        'title': 'Complete Profile',
        'description': 'Add all your personal details.',
        'amount': 10.0,
        'picturePath': '/images/profile.png',
      });

      // Reconvertir en objet depuis Map
      final taskFromMap = Task.fromJson(taskMap);
      expect(taskFromMap.title, 'Complete Profile');
      expect(taskFromMap.amount, 10.0);
      expect(taskFromMap.picturePath, '/images/profile.png');
    });
  });

  group('Firestore Collection Tests', () {
    // Test des références Firestore (Mock recommandé ici pour éviter d'écrire dans une vraie base)
    test('UsersCollectionReference structure', () {
      final userCollectionRef = usersRef;
      expect(userCollectionRef.path, 'users');
    });

    test('RewardsCollectionReference structure', () {
      final rewardsCollectionRef = rewardsRef;
      expect(rewardsCollectionRef.path, 'rewards');
    });

    test('AccomodationPostsCollectionReference structure', () {
      final accomodationsCollectionRef = accomodationpostsRef;
      expect(accomodationsCollectionRef.path, 'accomodationposts');
    });

    test('TasksCollectionReference structure', () {
      final tasksCollectionRef = tasksRef;
      expect(tasksCollectionRef.path, 'tasks');
    });
  });
}
