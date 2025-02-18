import 'package:education_app/screens/work.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UseProfileSreen extends StatefulWidget {
  const UseProfileSreen({super.key});

  @override
  State<UseProfileSreen> createState() => _UseProfileSreenState();
}

class _UseProfileSreenState extends State<UseProfileSreen> {
  int selectedIndex = 0;
  void onItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
    // next screen
    if (index == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Work()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 213, 249),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 17, right: 17),
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      width: 150,
                      height: 230,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("assets/images/profile1.jpg"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ishara \nDilan",
                          style: TextStyle(
                              fontSize: 40,
                              height: 0.9,
                              color: const Color.fromARGB(255, 35, 34, 34)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Email",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          "email.ishara@gmail.com",
                          style: TextStyle(
                              fontSize: 17, height: 0.9, color: Colors.black87),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Date of birth",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          "January.09.1998",
                          style: TextStyle(
                              fontSize: 17, height: 0.9, color: Colors.black87),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Address",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          "Malabe , Sri Lanka",
                          style: TextStyle(
                              fontSize: 17, height: 0.9, color: Colors.black87),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                builderItem(0, "About"),
                builderItem(1, "Work"),
                builderItem(2, "Activity"),
              ],
            ),
          ),
          // For About
          Padding(
            padding:
                const EdgeInsets.only(top: 18, left: 17, right: 17, bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 18, right: 18, left: 18),
                    child: Text(
                      "Bio",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 35, 34, 34)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5, right: 18, left: 18, bottom: 12),
                    child: Text(
                      "i am a passionate software developer with a keen interest in creating innovative solutions with a background in computer science and hands on experience.",
                      style: TextStyle(color: Color.fromARGB(255, 35, 34, 34)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 17, right: 17, bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 18, right: 18, left: 18, bottom: 5),
                    child: Text(
                      "On the web",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 35, 34, 34)),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 5, right: 18, left: 18, bottom: 12),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 35, 34, 34),
                            child: Icon(
                              FontAwesomeIcons.facebookF,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 35, 34, 34),
                            child: Icon(
                              FontAwesomeIcons.instagram,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 35, 34, 34),
                            child: Icon(
                              FontAwesomeIcons.linkedinIn,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 35, 34, 34),
                            child: Icon(
                              FontAwesomeIcons.twitter,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 17, right: 17),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 18, right: 25, left: 18),
                    child: Row(
                      children: [
                        Text(
                          "Website",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 35, 34, 34)),
                        ),
                        Spacer(),
                        Text(
                          "www.portofolio.ishara.com",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color.fromARGB(255, 35, 34, 34)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 18, right: 25, left: 18),
                    child: Row(
                      children: [
                        Text(
                          "Phone",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 35, 34, 34)),
                        ),
                        Spacer(),
                        Text(
                          "071 1 234 567",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color.fromARGB(255, 35, 34, 34)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector builderItem(int index, String label) {
    bool isSelected = index == selectedIndex;
    return GestureDetector(
      onTap: () {
        onItemSelected(index);
      },
      child: Container(
        width: 85,
        height: 30,
        decoration: BoxDecoration(
            color: isSelected
                ? const Color.fromARGB(255, 184, 172, 245)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
                  ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
              