import 'package:dto/models.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parkandhost/data/rewards.dart';
import 'package:parkandhost/data/tasks.dart';
import 'package:parkandhost/data/users.dart';

import '../styles/spacings.dart';
import 'accomodation_posts.dart';

class GenerateDataButton extends StatelessWidget {
  const GenerateDataButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FloatingActionButton.extended(
          onPressed: deleteCollections,
          label: const Row(
            children: [
              Icon(Icons.delete_forever),
              SizedBox(width: kHorizontalPaddingS),
              Text("Supprimer les données"),
            ],
          ),
        ),
        FloatingActionButton.extended(
          onPressed: () async {
            await authenticate();
            await addUsers();
            await addRewards();
            await addTasks();
            await addAccomodationPost();
          },
          label: const Row(
            children: [
              Icon(Icons.published_with_changes),
              SizedBox(width: kHorizontalPaddingS),
              Text("Générer les données"),
            ],
          ),
        )
      ],
    );
  }

  void deleteCollections() async {
    await usersRef.get().then((snapshot) {
      for (UsersQueryDocumentSnapshot user in snapshot.docs) {
        user.reference.delete();
      }
    });

    await rewardsRef.get().then((snapshot) {
      for (RewardsQueryDocumentSnapshot reward in snapshot.docs) {
        reward.reference.delete();
      }
    });

    await tasksRef.get().then((snapshot) {
      for (TasksQueryDocumentSnapshot task in snapshot.docs) {
        task.reference.delete();
      }
    });

    await accomodationpostsRef.get().then((snapshot) {
      for (AccomodationPostsQueryDocumentSnapshot accomodationPost in snapshot.docs) {
        accomodationPost.reference.delete();
      }
    });
  }

  Future<void> authenticate() async {
    for (var user in users) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: user.email, password: "123456789");
      } on FirebaseAuthException catch (e) {
        if (e.code == 'email-already-in-use') {
          Text("L'utilisateur ${user.email} existe déjà");
        }
      }
    }
  }

  Future<void> addUsers() async {
    for (var user in users) {
      usersRef.add(user).then((user) {
        for (var reward in rewards) {
          usersRef
              .doc(user.id)
              .rewards
              .add(reward)
              .then((reward) {});
        }

        for (var task in tasks) {
          usersRef
              .doc(user.id)
              .tasks
              .add(task)
              .then((task) {});
        }

        for (var accomodationPost in accomodationPosts) {
          usersRef
              .doc(user.id)
              .accomodations
              .add(accomodationPost)
              .then((accomodationPost) {});
        }
      });
    }
  }

  Future<void> addRewards() async {
    for (var reward in rewards) {
      rewardsRef.add(reward).then((reward) {});
    }
  }

  Future<void> addTasks() async {
    for (var task in tasks) {
      tasksRef.add(task).then((task) {});
    }
  }

  Future<void> addAccomodationPost() async {
    for (var accomodationPost in accomodationPosts) {
      accomodationpostsRef.add(accomodationPost).then((accomodationPost) {});
    }
  }
}
