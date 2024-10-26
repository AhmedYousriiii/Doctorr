import 'package:firstapp/widget/bottun_custom.dart';
import 'package:firstapp/widget/call_custom.dart';
import 'package:firstapp/widget/container_custom.dart';
import 'package:flutter/material.dart';

class ProfileDoctor extends StatelessWidget {
  const ProfileDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff265ED7),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        centerTitle: true,
        title: Text(
          "Doctor Profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ClipOval(
                      child: Image.asset(
                    "asset/image/GMY02605.JPG",
                    width: 120,
                    height: 120,
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "DR . Ahmed Yousri",
                        style: TextStyle(
                          color: Color(0xff265ED7),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Eye special",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "3",
                            style: TextStyle(
                              color: Color(0xff265ED7),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          CallCustom(
                            number: "1",
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          CallCustom(
                            number: "2",
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "About",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "professor of Eye Special - former head of department of Eye Special ,Cairo Universiry",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ContainerCustom(
                icon: Icons.add,
                text: "Clepatra Hospital",
              ),
              ContainerCustom(
                icon: Icons.lock_clock_sharp,
                text: "10-18",
              ),
              ContainerCustom(
                icon: Icons.location_city,
                text: "2 Gamaa street ,Giza ",
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.black,
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  "Contact Info",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ContainerCustom(
                icon: Icons.email,
                text: "Clepatra Hospital",
              ),
              ContainerCustom(
                icon: Icons.call,
                text: "10-18",
              ),
              ContainerCustom(
                icon: Icons.call,
                text: "2 Gamaa street ,Giza ",
              ),
              SizedBox(
                height: 16,
              ),
              BottonCustom(
                text: "Chat With Dr.Ahmed ",
                color: Colors.green,
              ),
              SizedBox(
                height: 10,
              ),
              BottonCustom(
                text: "Book an Appointment",
                color: const Color.fromARGB(255, 10, 121, 213),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
