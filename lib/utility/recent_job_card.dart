import 'package:flutter/material.dart';

class RecentJobCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final int hourlyRate;
  final Image icons;

  RecentJobCard({
    required this.companyName,
    required this.jobTitle,
    required this.hourlyRate,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Container(
                height: 40,
                child: icons,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    jobTitle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    companyName,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ],
          ),
          ClipRect(
        
              child:
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(      color: Colors.green[300],
                    borderRadius:BorderRadius.circular(5)),
                    child: Text(
                      '\$ ' + hourlyRate.toString() + '/h'
                    ),
                  ),
                ),
        ]),
      ),
    );
  }
}
