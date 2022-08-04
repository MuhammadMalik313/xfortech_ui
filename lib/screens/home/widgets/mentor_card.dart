
import 'package:api_integration/model/mentors_model.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class MentorCard extends StatelessWidget {
  int index;
   MentorCard({
    Key? key,
    required this.index
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 145,
        decoration:
            BoxDecoration(color: kWhite, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start
            
            
            ,
     
            children: [
              Image.asset(mentorList[index].mentorImage),
              Text(
                mentorList[index].mentorName,
                style: const TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
              ),

               Text(
                mentorList[index].mentorSubject,
                style: TextStyle(fontSize: 10),
              ),
              const SizedBox(height: 10,),
               Text(
                mentorList[index].mentorDescription,
                style: const TextStyle(fontSize: 8,),
              ),
             
              
            ],
          ),
        ),
      ),
    );
  }
}
