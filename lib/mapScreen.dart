import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'components/components.dart';

class MapScreen extends StatelessWidget {
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(alignment: AlignmentDirectional.topCenter,
          children: [
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: const GoogleMap(
                    mapType: MapType.normal,
                    zoomControlsEnabled: false,
                    initialCameraPosition: CameraPosition(
                      target: LatLng(30.033333, 31.233334),
                      zoom: 12.0,
                    ))),
            Padding(
              padding: const EdgeInsets.only(top: 35,right: 20,left: 20),
              child: defaultFormField(
                label: 'Search Places',
                prefix: Icons.search,
                type: TextInputType.text,
                isPassword: false,
                controller: searchController,
                validate: (String? value) {
                  if (value!.isEmpty) {
                    return 'search musn\' t be empty';
                  }
                },
              ),
            )
          ],
        ));
  }
}
