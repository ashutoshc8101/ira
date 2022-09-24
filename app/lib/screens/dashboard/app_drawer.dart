import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:ira/screens/dashboard/student_drawer_header.dart';
import 'package:ira/screens/gate_pass/purpose.dart';
import 'package:ira/screens/hostel/dashboard.dart';
import 'package:ira/screens/login/login.dart';
import 'package:ira/screens/medical/dashboard.dart';
import 'package:ira/screens/mess/student/mess_student.dart';
import 'package:ira/screens/profile/profile.dart';
import 'package:ira/screens/team/team.dart';
import 'package:ira/services/auth.service.dart';
import 'package:localstorage/localstorage.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class AppDrawer extends StatefulWidget {
  String role;
  final secureStorage = const FlutterSecureStorage();
  final localStorage = LocalStorage('store');

  AppDrawer({Key? key, required this.role}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    AuthService authService = Provider.of(context);

    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        StudentDrawerHeader(),
        const Divider(),
        ListTile(
          leading: const Icon(
            Icons.home,
          ),
          selected: true,
          title: const Text(
            "Home",
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text("Hostel"),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HostelStudentScreen(),
                ));
          },
        ),
        ListTile(
          leading: const Icon(Icons.food_bank),
          title: const Text("Mess"),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MessStudentScreen(),
                ));
          },
        ),
        ListTile(
          leading: const Icon(Icons.medical_services),
          title: const Text("Medical"),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MedicalStudentScreen(),
                ));
          },
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text("Id Card"),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile(),
                ));
          },
        ),
        ListTile(
          leading: const Icon(Icons.admin_panel_settings_rounded),
          title: const Text("Gate Pass"),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PurposeScreen(),
                ));
          },
        ),
        ListTile(
          leading: const Icon(Icons.people),
          title: const Text("Team"),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TeamScreen(),
                ));
          },
        ),
        ListTile(
          hoverColor: Colors.blue,
          leading: const Icon(Icons.exit_to_app),
          title: const Text('Sign out'),
          onTap: () async {
            if (widget.role == 'student') {
              await authService.signOut();
            } else {
              await widget.secureStorage.delete(key: 'staffToken');
              await widget.secureStorage.delete(key: 'role');
            }
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            );
          },
        ),
      ],
    ));
  }
}