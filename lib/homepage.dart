import 'package:app1/utility/job_card.dart';
import 'package:app1/utility/recent_job_card.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

final List JobForYou=[
  //[Comapny Name, Job title, Hourley Pay]
  ['Uber','Ui Design', 20, Image.network("https://upload.wikimedia.org/wikipedia/commons/c/cc/Uber_logo_2018.png",)],
  ['Google','Flutter Devloper', 50, Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpnTTyX9hKLSg3KDMq-7Onnk_5LuJjev3yed6DFbdR-zflUEEOxkOOBRjhc6iRoeeJGuo&usqp=CAU")],
  ['Ookla','Database Engineer', 30,Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Ookla_logo.svg/2560px-Ookla_logo.svg.png")],
  ['Apple','BackEnd Devloper', 70, Image.network("https://upload.wikimedia.org/wikipedia/commons/a/ab/Apple-logo.png")],

];
final List recentJob=[
  //[Comapny Name, Job title, Hourley Pay]
   ['Uber','Ui Design', 20, Image.network("https://upload.wikimedia.org/wikipedia/commons/c/cc/Uber_logo_2018.png",)],
  ['Google','Flutter Dev.', 50, Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpnTTyX9hKLSg3KDMq-7Onnk_5LuJjev3yed6DFbdR-zflUEEOxkOOBRjhc6iRoeeJGuo&usqp=CAU")],
  ['Ookla','Database Er', 30,Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Ookla_logo.svg/2560px-Ookla_logo.svg.png")],
  ['Apple','BackEnd Dev.', 70, Image.network("https://upload.wikimedia.org/wikipedia/commons/a/ab/Apple-logo.png")],

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor:Colors.grey[300],
      
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        // App Bar 
        SizedBox(height: 25,),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Container(
            padding: EdgeInsets.all(8),
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey[200],
            ),
            child: 
            Icon(Icons.menu,
            color: Colors.grey[800],
            ),
            
           
            
          ),

       
        ),
            // Some Text Discover a New Path
      const SizedBox(height: 25,),
      const Padding(padding: EdgeInsets.only(left: 25),
      child: Text('Discover a New Path',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 26,
      ),
      ),
      ),
      SizedBox(height: 25,),
      Padding(padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.grey[200],
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12),
              ),
              child: Row(children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 30,
                  child: Icon(Icons.search, color: Colors.grey[600],),
                ),
                ),
          
                Expanded(child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search For a Job..'
                ),))
              ]),
            ),
          ),
          SizedBox(width: 10,),
        
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.tune),
            ),
          )
        ],
      ),
      ),
      const SizedBox(height: 25,),
      const Padding(padding: EdgeInsets.only(left: 25),
        child: Text("For You",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 26,
        
        ),
        ),
      

      ),
      const SizedBox(height: 25),
      Container(
        
        height:150,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount:JobForYou.length,
          itemBuilder: (context,index){
          return JobCard(
            companyName:JobForYou[index][0],
            jobTitle: JobForYou[index][1],
            hourlyRate: JobForYou[index][2],
            icons : JobForYou[index][3],
          );
        },
      ),
      ),
      SizedBox(height: 50,),
      
      Padding(
        padding: const EdgeInsets.only(left:25.0),
        child: Text("Recently Added",
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold
        ),),
      ),

      SizedBox(height: 10,),
      Expanded(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: ListView.builder(
          itemCount: recentJob.length,
          itemBuilder: (context,index){
          return RecentJobCard(
          companyName:recentJob[index][0],
          jobTitle: recentJob[index][1],
          hourlyRate: recentJob[index][2],
          icons: recentJob[index][3],

          );
        }),
      )),


          // SizedBox(height: 100,)
      ]),

  
    );
    }
}