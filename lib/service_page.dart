import 'package:electric_web/constants.dart';
import 'package:electric_web/models/service_model.dart';
import 'package:electric_web/widgets/service_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicePage extends StatelessWidget {
  ServicePage({super.key});

  List services = [
    ServiceModel(
      imageName: "test.png",
      serviceName: "Example1",
      serviceContent:
          "asddddssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssdddddasdasd",
    ),
    ServiceModel(
      imageName: "test.png",
      serviceName: "Example2",
      serviceContent: "asdddddddddasdasd",
    ),
    ServiceModel(
      imageName: "test.png",
      serviceName: "Example2",
      serviceContent: "asdddddddddasdasd",
    ),
    ServiceModel(
      imageName: "test.png",
      serviceName: "Example2",
      serviceContent: "asdddddddddasdasd",
    ),
    ServiceModel(
      imageName: "test.png",
      serviceName: "Example2",
      serviceContent: "asdddddddddasdasd",
    ),
    ServiceModel(
      imageName: "test.png",
      serviceName: "Example2",
      serviceContent: "asdddddddddasdasd",
    ),
    ServiceModel(
      imageName: "test.png",
      serviceName: "Example2",
      serviceContent: "asdddddddddasdasd",
    ),
    ServiceModel(
      imageName: "test.png",
      serviceName: "Example2",
      serviceContent: "asdddddddddasdasd",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Text(
              "Services",
              style: GoogleFonts.robotoMono(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.deepOrangeAccent,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: services.length,
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: (getHeight(context) * 0.4),
                mainAxisExtent: (getHeight(context) * 0.4),
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height),
              ),
              itemBuilder: (context, index) {
                return ServiceWidget(
                  sm: services[index],
                );
              },
              padding: EdgeInsets.all(
                10,
              ),
            ),
          )
        ],
      ),
    );
  }
}
