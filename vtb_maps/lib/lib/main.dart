import 'package:flutter/material.dart';
import 'package:vtb_map/examples/bicycle_page.dart';
import 'package:vtb_map/examples/circle_map_object_page.dart';
import 'package:vtb_map/examples/clusterized_placemark_collection_page.dart';
import 'package:vtb_map/examples/driving_page.dart';
import 'package:vtb_map/examples/map_controls_page.dart';
import 'package:vtb_map/examples/map_object_collection_page.dart';
import 'package:vtb_map/examples/placemark_map_object_page.dart';
import 'package:vtb_map/examples/polygon_map_object_page.dart';
import 'package:vtb_map/examples/polyline_map_object_page.dart';
import 'package:vtb_map/examples/reverse_search_page.dart';
import 'package:vtb_map/examples/search_page.dart';
import 'package:vtb_map/examples/suggest_page.dart';
import 'package:vtb_map/examples/user_layer_page.dart';
import 'package:vtb_map/examples/widgets/map_page.dart';
import 'package:vtb_map/vtb/vtb_page.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

void main() {
  runApp(const MaterialApp(home: MainPage()));
}

const List<MapPage> _allPages = <MapPage>[
  VtbPage(),
  MapControlsPage(),
  ClusterizedPlacemarkCollectionPage(),
  MapObjectCollectionPage(),
  PlacemarkMapObjectPage(),
  PolylineMapObjectPage(),
  PolygonMapObjectPage(),
  CircleMapObjectPage(),
  UserLayerPage(),
  SuggestionsPage(),
  SearchPage(),
  ReverseSearchPage(),
  BicyclePage(),
  DrivingPage(),
];

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  void _pushPage(BuildContext context, MapPage page) {
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (_) => Scaffold(
          appBar: AppBar(backgroundColor: const Color(0xFF3A4A61), title: Text(page.title)),
          body: Container(child: page),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('YandexMap examples')),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: const YandexMap()
            )
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _allPages.length,
              itemBuilder: (_, int index) => ListTile(
                title: Text(_allPages[index].title),
                onTap: () => _pushPage(context, _allPages[index]),
              ),
            )
          )
        ]
      )
    );
  }
}
