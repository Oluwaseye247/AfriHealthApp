import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:health/model/doctors.dart';

class DoctorList extends StatelessWidget {
  final _List = Doctor.generateDoctorList();
  final _pagectrl = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pagectrl,
        itemCount: _List.length,
        itemBuilder: (context, index) {
          var doctor = _List[index];
          return GestureDetector(
            onTap: () {},
            child: Stack(
              children: [
                Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      right: 20,
                      bottom: 20,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Text(
                        doctor.url,),
                    ),
                ),
                Positioned(
                  bottom: 80,
                    left: 15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: Text(
                            doctor.name,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white24
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: Text(
                            doctor.job,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                          ),
                        )
                      ],
                    )
                ),
              ],
            ),
          );
        }
    );
  }
}
