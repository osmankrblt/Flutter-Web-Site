import 'dart:html';

import 'package:electric_web/constants.dart';
import 'package:flutter/material.dart';
import 'package:electric_web/models/service_model.dart';

class ServiceWidget extends StatelessWidget {
  late ServiceModel sm;
  ServiceWidget({
    Key? key,
    required this.sm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Colors.transparent,
        elevation: 20,
        shadowColor: Colors.yellow,
        child: Container(
          width: getWidth(context),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              15,
            ),
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                child: Image.asset(
                  "assets/" + sm.imageName,
                  width: isWeb(context)
                      ? getHeight(context) * (0.2)
                      : getHeight(context) * (0.2),
                  fit: BoxFit.contain,
                ),
              ),
              Divider(),
              Text(
                sm.serviceName,
                style: TextStyle(
                  fontFamily: "Roboto Mono",
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Text(
                    sm.serviceContent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
