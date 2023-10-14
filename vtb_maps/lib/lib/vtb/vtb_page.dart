import 'package:flutter/material.dart';
import 'package:vtb_map/examples/widgets/map_page.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class VtbPage extends MapPage {
  const VtbPage({Key? key}) : super("Vtb maps", key: key);

  @override
  Widget build(BuildContext context) {
    return _VtbMaps();
  }
}

class _VtbMaps extends StatefulWidget {
  @override
  _VtbMapsState createState() => _VtbMapsState();
}

class _VtbMapsState extends State<_VtbMaps> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const YandexMap(
        nightModeEnabled: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 51,
            height: 51,
            decoration: ShapeDecoration(
              color: const Color(0xFF3A4A61),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(21),
              ),
            ),
            child: TextButton(
              onPressed: () {},
              child: const Icon(Icons.navigation),
            ),
          ),
          const SizedBox(height: 9),
          Container(
            width: 344,
            height: 78,
            decoration: ShapeDecoration(
              color: const Color(0xFF3A4A61),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(21),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(),
                ),
                navButton(() {}, Icons.map_rounded, "Умный поиск"),
                Expanded(
                  child: Container(),
                ),
                navButton(() {}, Icons.filter_hdr, "Фильтры"),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget navButton(void Function() onPressed, IconData icon, String title) {
    return TextButton(
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(),
          ),
          Icon(
            icon,
            color: const Color(0xFFB0B7BF),
          ),
          Expanded(
            child: Container(),
          ),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFFB0B7BF),
              fontSize: 12,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
