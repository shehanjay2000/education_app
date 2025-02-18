import 'package:flutter/material.dart';

class Work extends StatefulWidget {
  const Work({super.key});

  @override
  State<Work> createState() => _UseProfileSreenState();
}

class _UseProfileSreenState extends State<Work> {
  int selectedIndex = 0;

  void onItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 213, 249),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 17, right: 17),
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
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Software \nDeveloper",
                          style: TextStyle(
                              fontSize: 40,
                              height: 0.9,
                              color: const Color.fromARGB(255, 35, 34, 34)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Type",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          "Junior Engineer",
                          style: TextStyle(
                              fontSize: 17, height: 0.9, color: Colors.black87),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Joined",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          "February.02.2027",
                          style: TextStyle(
                              fontSize: 17, height: 0.9, color: Colors.black87),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Experience",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          "6 Months",
                          style: TextStyle(
                              fontSize: 17, height: 0.9, color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 35,
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
          projects("17", "Projects \n  done", "92%", "Success \n   rate"),
          projects("5", "Teams", "240", "  Clients\n Reports"),
        ],
      ),
    );
  }

  Padding projects(number, name, number1, name1) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 17, right: 17),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 15,
                          left: 65,
                          child: Text(
                            number,
                            style:
                                TextStyle(fontSize: 28, color: Colors.black87),
                          )),
                      Positioned(
                          top: 50,
                          left: 50,
                          child: Text(
                            name,
                            style:
                                TextStyle(fontSize: 20, color: Colors.black87),
                          ))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 17,
              ),
              Expanded(
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 15,
                          left: 65,
                          child: Text(
                            number1,
                            style:
                                TextStyle(fontSize: 28, color: Colors.black87),
                          )),
                      Positioned(
                          top: 50,
                          left: 50,
                          child: Text(
                            name1,
                            style:
                                TextStyle(fontSize: 20, color: Colors.black87),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          )
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
             style:
                                TextStyle(fontSize: 20, color: Colors.black87),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  GestureDetector builderItem(int index, String label) {
    bool isSelected = index == selectedIndex;
    return GestureDete