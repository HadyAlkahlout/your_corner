import 'package:flutter/material.dart';
import 'package:your_corner/domain/model/main/model_service.dart';

class ServiceItem extends StatelessWidget {
  ServiceItem({super.key, required this.service});

  ServiceModel service;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            service.name,
            textAlign: TextAlign.start,
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'Lato',
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Row(
          children: [
            const Text(
              '\$',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Lato',
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(
              width: 2,
            ),
            Text(
              service.price,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: 'Lato',
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
