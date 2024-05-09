import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('THUNDERFOREST MAPS'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(-23.6993531,133.8698302), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/outdoors/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(-33.8482439,150.9319747),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.red),
                    )),
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(-17.3834255,123.6060748),
                    builder: (ctx) => Container(
                    child: Icon(Icons.location_on, color: Colors.orange),
                    ),
                  ),
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(-12.6187743,141.8650396),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.yellow),
                    ),
                  ),
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(-35.0003214,138.2815079),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.green),
                    ),
                  ),
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(-33.9666516,115.0117017),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.blue),
                    ),
                  ),
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(-23.6993531,133.8698302),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.purple),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
