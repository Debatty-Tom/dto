import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
);

@firestoreSerializable
class User {
  final String firstName;
  final String lastName;
  final String email;

  const User({
    required this.firstName,
    required this.lastName,
    required this.email,
  });
}
/*@Collection<User>('users')
final usersRef = UserCollectionReference();*/

@firestoreSerializable
class AccomodationPost {
  final String title;
  final String city;
  final String? description;
  final double amount;
  final int rating;
  final String? picturePath;

  const AccomodationPost({
    required this.title,
    required this.city,
    this.description,
    required this.amount,
    required this.rating,
    this.picturePath,
  });
}
/*@Collection<AccomodationPosts>('accomodationPosts')
final accomodationPostsRef = AccomodationPostCollectionReference();*/


@firestoreSerializable
class Reward {
  final String title;
  final String? description;
  final double amount;
  final String? picturePath;

  const Reward({
    required this.title,
    this.description,
    required this.amount,
    this.picturePath,
  });
}
/*@Collection<Rewards>('rewards')
final rewardsRef = RewardsCollectionReference();*/


@firestoreSerializable
class Task {
  final String title;
  final String? description;
  final double amount;
  final String? picturePath;

  const Task({
    required this.title,
    this.description,
    required this.amount,
    this.picturePath,
  });
}
/*@Collection<Rewards>('tasks')
final tasksRef = TasksCollectionReference();*/



@Collection<User>('users', prefix: 'Users')
@Collection<Reward>('users/*/rewards', prefix: 'UsersRewards')
@Collection<Task>('users/*/tasks', prefix: 'UsersTasks')
@Collection<AccomodationPost>('users/*/accomodations', prefix: 'UsersAccomodations')
final usersRef = UsersCollectionReference();

@Collection<Reward>('rewards', prefix: 'Rewards')
final rewardsRef = RewardsCollectionReference();

@Collection<Task>('tasks', prefix: 'Tasks')
final tasksRef = TasksCollectionReference();

@Collection<AccomodationPost>('accomodationposts', prefix: 'AccomodationPosts')
final accomodationpostsRef = AccomodationPostsCollectionReference();
