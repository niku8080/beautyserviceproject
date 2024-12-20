import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/server_screen/serverScreen.dart';
import 'package:homepagefemale/welcome_screen.dart';

class UserOrAdmin extends StatefulWidget {
  const UserOrAdmin({super.key});

  @override
  State<UserOrAdmin> createState() => _UserOrAdminState();
}

class _UserOrAdminState extends State<UserOrAdmin> {
  String selectedAccountType = '';
  final TextEditingController phoneController = TextEditingController();
  bool isChecked = false;

  void handleNextButton() {
    if (phoneController.text.isEmpty) {
      // Show error if the phone number is empty
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your mobile number.')),
      );
    } else if (!isChecked) {
      // Show error if the terms are not accepted
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please accept the terms and privacy policy.')),
      );
    } else if (selectedAccountType.isEmpty) {
      // Show error if no account type is selected
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select an account type.')),
      );
    } else {
      // Navigate based on the selected account type
      if (selectedAccountType == 'User') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const WelcomeScreen()),
        );
      } else if (selectedAccountType == 'Services') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  ProfilePage12()),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 120),
                Text(
                  "Take the First Step with Us",
                  style: GoogleFonts.lato(fontSize: 27, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                Text(
                  "Choose your account type",
                  style: GoogleFonts.lato(fontSize: 23, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => setState(() => selectedAccountType = 'User'),
                        child: AccountTypeCard(
                          icon: Icons.person_search_outlined,
                          label: 'User',
                          isSelected: selectedAccountType == 'User',
                        ),
                      ),
                    ),
                    const SizedBox(width: 40),
                    
                       Expanded(
                         child: GestureDetector(
                          onTap: () => setState(() => selectedAccountType = 'Services'),
                          child: AccountTypeCard(
                            icon: Icons.miscellaneous_services_outlined,
                            label: 'Services',
                            isSelected: selectedAccountType == 'Services',
                          ),
                                               ),
                       ),
                    
                  ],
                ),
                const SizedBox(height: 30),
                Text(
                  "Mobile Number",
                  style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        "+91",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          hintText: "Enter Mobile number",
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 17, fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value ?? false;
                          
                        });
                      },
                    ),
                    Expanded(
                      child: Text(
                        "By creating an account, I acknowledge your terms and privacy policy",
                        style: GoogleFonts.lato(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 108, 107, 107),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: handleNextButton,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15), backgroundColor: const Color.fromARGB(255, 243, 82, 136),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    "Next",
                    style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.w800, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AccountTypeCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;

  const AccountTypeCard({
    required this.icon,
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: isSelected ? Color.fromARGB(255,245,69,128) : Colors.grey),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: isSelected ?Color.fromARGB(255,245,69,128) : Colors.grey, size: 100),
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.w700, color: isSelected ?Color.fromARGB(255,245,69,128): Colors.grey),
          ),
        ],
      ),
    );
  }
}

class UserSignupPage extends StatelessWidget {
  const UserSignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Signup')),
      body: const Center(child: Text('User Signup Page')),
    );
  }
}

