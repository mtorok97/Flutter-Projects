import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

const providerConfigs = [EmailProviderConfiguration()];

class FirebaseLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SignInScreen(
        actions: [
          AuthStateChangeAction<SignedIn>((context, state) {
            Navigator.pushReplacementNamed(
              context,
              "/homepage",
            );
          }),
        ],
        providerConfigs: providerConfigs,
    );
  }
}

class FirebaseProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProfileScreen(
      providerConfigs: providerConfigs,
      actions: [
        SignedOutAction((context) {
          Navigator.pushReplacementNamed(context, '/homepage');
        }),
      ],
    );
  }
}

String logOut() {
  _signOut();
  return "/homepage";
}

Future<void> _signOut() async {
  await FirebaseAuth.instance.signOut();
}
