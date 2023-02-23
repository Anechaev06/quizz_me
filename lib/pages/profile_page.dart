import 'package:flutter/material.dart';
// Constants
import 'package:quizz_me/constants/image_strings.dart';
import 'package:quizz_me/constants/text_strings.dart';
import 'package:quizz_me/constants/colors.dart';
// Packages
import 'package:line_icons/line_icons.dart';
// Utils
import '../utils/profile_menu.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              // const SizedBox(height: 50),
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(profileImage),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: primaryColor,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(LineIcons.alternatePencil),
                        iconSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Text(profileHeading,
                  style: Theme.of(context).textTheme.headlineMedium),
              Text(profileSubHeading,
                  style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UpdateProfileScreen())),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    side: BorderSide.none,
                    shape: const StadiumBorder(),
                  ),
                  child: const Text(
                    editProfile,
                    style: TextStyle(
                      color: darkColor,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // MENU
              ProfileMenuWidget(
                title: "Settings",
                icon: LineIcons.cog,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Themes",
                icon: LineIcons.palette,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Billing Details",
                icon: LineIcons.wallet,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "User Management",
                icon: LineIcons.userCheck,
                onPress: () {},
              ),
              const Divider(color: Colors.grey),
              // const SizedBox(height: 10),
              ProfileMenuWidget(
                title: "Info",
                icon: LineIcons.infoCircle,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Logout",
                icon: LineIcons.alternateSignOut,
                onPress: () {},
                textColor: Colors.red,
                endIcon: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            LineIcons.angleLeft,
            color: Colors.black,
          ),
        ),
        title: Text(
          editProfile,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              // const SizedBox(height: 50),
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(profileImage),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(LineIcons.camera),
                        iconSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 50),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Full Name"),
                        prefixIcon: Icon(
                          Icons.person_outline_rounded,
                        ),
                      ),
                    ),
                    // const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text("E-mail"),
                        prefixIcon: Icon(
                          Icons.mail_outline_rounded,
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Phone No"),
                        prefixIcon: Icon(
                          LineIcons.phone,
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Password"),
                        prefixIcon: Icon(
                          Icons.password_rounded,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
