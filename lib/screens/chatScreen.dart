import 'package:flutter/material.dart';
import 'package:whatsapp/assets.dart';
import 'package:whatsapp/widgets/chatWidget.dart';


class ChatScreen extends StatelessWidget {
  //const ChatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                  "WhatsApp",
                style: TextStyle(fontSize: 21),
              ),
            ),
            actions: [
              Padding(
                  padding: EdgeInsets.only(top: 12,right: 15),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              PopupMenuButton(
                elevation: 10,
                padding: EdgeInsets.symmetric(vertical: 20),
                  iconSize: 28,
                  itemBuilder: (context) =>[
                    PopupMenuItem(
                      value: 1,
                      child: Text(
                        "New Group",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                    ),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: Text(
                        "New Broadcast",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: Text(
                        "Linked Devices",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      value: 4,
                      child: Text(
                        "Starred messages",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      value: 5,
                      child: Text(
                        "Settings",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
              ),
            ],
          ),
        ),
        body: Column(children: [
          Container(
            width: double.infinity,
            color: Colors.teal,
            child: TabBar(
              isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                tabs: [
                  Container(
                    width: 40,
                    child: Icon(Icons.camera_alt,),
                  ),
                  Container(
                    width: 120,
                    child: Row(children: [
                      Text("CHATS"),
                      SizedBox(width: 8,),
                      Container(
                        alignment: Alignment.center,
                        height: 22,
                        width: 22,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.circular(20),
                        ),
                        child: Text("10",style: TextStyle(
                          color: Colors.teal,
                          fontSize: 13,
                        ),
                        ),
                      ),
                    ],
                    ),
                  ),
                  Container(width: 100,child: Tab(child: Text("STATUS"),),),
                  Container(width: 100,child: Tab(child: Text("CALLS"),),),
                ],
            ),
          ),
          Flexible(flex: 1,
            child: TabBarView(children: [
            Container(color: Colors.black,),
              ListView(
                children: [
                  ChatWidget(avatar: mammootty,name: "Mammootty",text: "Namaskaram",time: "2:51 pm",msg: "1"),
                  ChatWidget(avatar: mohanlal,name: "Mohanlal",text: "Hello",time: "2:51 pm",msg: "1"),
                  ChatWidget(avatar: prithviraj,name: "Prithvi",text: ":)",time: "12:15 pm",msg: "1"),
                  ChatWidget(avatar: dulquer,name: "DQ",text: "Watch it!!",time: "11:50 pm",msg: "2"),
                  ChatWidget(avatar: manju,name: "Manju",text: "Its out now",time: "11:30 am",msg: "3"),
                  ChatWidget(avatar: nitya,name: "Nit",text: "Hw u doing",time: "10:51 am",msg: "1"),
                ],
              ),
              Container(color: Colors.white,child: Center(child: Text("Statuses",style: TextStyle(color: Colors.black54),)),),
            Container(color: Colors.white,child: Center(child: Text("Calls",style: TextStyle(color: Colors.black54),)),),
          ],
          ),
          ),
        ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.teal,
          child: Icon(Icons.message,),
        ),
      ),
    );
  }
}
