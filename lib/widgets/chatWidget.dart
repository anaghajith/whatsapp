import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  // const ChatWidget({super.key});
  final String avatar;
  final String text;
  final String name;
  final String time;
  final String msg;

  ChatWidget({
    required this.avatar,
    required this.text,
    required this.name,
    required this.time,
    required this.msg,
  });
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 5,
          ),
        child: Column(children: [
          InkWell(
            onTap: (){},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(avatar,height: 65,width: 65,),
                  ),
                  Padding(padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        SizedBox(height: 8,),
                        Text(text,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black54),),
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(time,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.green,),),
                      SizedBox(height: 6,),
                      Container(
                        alignment: Alignment.center,
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(20)),
                        child: Text(msg,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
        ),
      ),
    );
  }
}
