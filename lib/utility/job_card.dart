import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {

  final String companyName;
  final String jobTitle;
  // final String logoImagePath;
  final int hourlyRate;
  final Image icons;

  JobCard({
    required this.companyName,
    required this.jobTitle,
    // required this.logoImagePath,
    required this.hourlyRate,
    required this.icons
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 200,
          padding: EdgeInsets.all(12),
          color: Colors.grey[200 ],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(height: 30,
                child: icons,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    color: Colors.grey[500],

                    padding: const EdgeInsets.all(8),
                    child: const Text("Paart Time",
                    style: TextStyle(
                      color: Colors.white
                    ),)),
                ),
      
              ],
            ),
            Text(jobTitle,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            Text("\$" +hourlyRate.toString()+"/hr"),
          ],)
        ),
      ),
    );
  }
}